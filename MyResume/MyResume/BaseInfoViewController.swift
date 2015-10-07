//
//  BaseInfoViewController.swift
//  MyResume
//
//  Created by duzhe on 15/10/7.
//  Copyright © 2015年 duzhe. All rights reserved.
//

import UIKit

class BaseInfoViewController: BaseViewController {

    
      var viewWidth:CGFloat!
    
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var nameLabel:UILabel!
    @IBOutlet weak var ageLabel:UILabel!
    @IBOutlet weak var marryLabel:UILabel!
    @IBOutlet weak var exprLabel:UILabel!
    @IBOutlet weak var attLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewWidth = self.view.bounds.width
        
        titleLabel.transform =  CGAffineTransformMakeTranslation(0, -100)
        titleLabel.alpha = 0
        
        nameLabel.transform =  CGAffineTransformMakeTranslation(-viewWidth, 0)
        ageLabel.transform =  CGAffineTransformMakeTranslation(-viewWidth, 0)
        marryLabel.transform =  CGAffineTransformMakeTranslation(-viewWidth, 0)
        exprLabel.transform =  CGAffineTransformMakeTranslation(-viewWidth, 0)
        attLabel.transform =  CGAffineTransformMakeTranslation(-viewWidth, 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowAnimatedContent, animations: { () -> Void in
            
            self.titleLabel.transform = CGAffineTransformIdentity
            self.titleLabel.alpha = 1
            }) { (_) -> Void in
                
                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                        self.nameLabel.transform = CGAffineTransformIdentity
                    }, completion: nil)
                
                UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                        self.exprLabel.transform = CGAffineTransformIdentity
                    }, completion: nil)
                
                UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                        self.ageLabel.transform = CGAffineTransformIdentity
                    }, completion: nil)
                
                UIView.animateWithDuration(0.5, delay: 0.4, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                        self.marryLabel.transform = CGAffineTransformIdentity
                    }, completion: nil)
                
                UIView.animateWithDuration(0.3, delay: 0.5, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                        self.attLabel.transform = CGAffineTransformIdentity
                    }, completion: nil)
                
                
        }
        
    }
    
}
