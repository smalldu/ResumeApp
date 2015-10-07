//
//  MenuViewController.swift
//  MyResume
//
//  Created by duzhe on 15/10/6.
//  Copyright © 2015年 duzhe. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    
    let bgColor = UIColor(red: 00/255, green: 41/255,  blue: 82/255,   alpha: 1.0)
    var menuItem:[MenuItem] = []
    var itemHeight:CGFloat!
    let width:CGFloat = 70
    //定义一个动画的闭包
    var showDetail:((v:UIView)->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置默认背景颜色
        view.backgroundColor = bgColor
        
        initItems()
    }
    
    
    func initItems(){
        
        menuItem = MenuItem.sharedItems
        //计算每个元素占的高度
        itemHeight = (self.view.bounds.height+(CGFloat(menuItem.count)*1))/CGFloat(menuItem.count)
        print(self.view.bounds.width)
        
        var itemView:ItemView!
        //遍历
        for i in 0..<menuItem.count{
            itemView = ItemView(frame: CGRectMake(-width-32, CGFloat(i)*(itemHeight-1), width*2+30, itemHeight),title: menuItem[i].title,img: menuItem[i].symbol)
            itemView.backgroundColor = menuItem[i].color
            self.view.addSubview(itemView)
            if  menuItem[i].color == self.view.backgroundColor {
                itemView.isSelected = true
            }
            
            //右移的方法
            itemView.showDetail = { v in
                self.showDetail?(v: v)
            }
        }
        
    }
    
}
