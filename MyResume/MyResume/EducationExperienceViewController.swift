//
//  EducationExperienceViewController.swift
//  MyResume
//
//  Created by duzhe on 15/10/7.
//  Copyright © 2015年 duzhe. All rights reserved.
//

import UIKit

class EducationExperienceViewController: BaseViewController {

    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var lab1:UILabel!
    @IBOutlet weak var lab2:UILabel!
    @IBOutlet weak var lab3:UILabel!
    var viewWidth:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.transform =  CGAffineTransformMakeTranslation(0, -100)
        titleLabel.alpha = 0
        viewWidth = self.view.bounds.width
        
        lab1.transform =  CGAffineTransformMakeTranslation(-viewWidth, 0)
        lab2.transform =  CGAffineTransformMakeTranslation(-viewWidth, 0)
        lab3.transform =  CGAffineTransformMakeTranslation(-viewWidth, 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowAnimatedContent, animations: { () -> Void in
            
            self.titleLabel.transform = CGAffineTransformIdentity
            self.titleLabel.alpha = 1
            }) { (_) -> Void in
                
                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                    self.lab1.transform = CGAffineTransformIdentity
                    }, completion: nil)
                
                UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                    self.lab2.transform = CGAffineTransformIdentity
                    }, completion: nil)
                
                UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                    self.lab3.transform = CGAffineTransformIdentity
                    }, completion: nil)
                
                
        }
        
    }
    
}
