//
//  PersonalProfileViewController.swift
//  MyResume
//
//  Created by duzhe on 15/10/7.
//  Copyright © 2015年 duzhe. All rights reserved.
//

import UIKit

class PersonalProfileViewController: BaseViewController {

    @IBOutlet weak var titleLabel:UILabel!
    
    @IBOutlet weak var txt:UITextView!
    
    @IBOutlet weak var constraint1:NSLayoutConstraint!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.transform =  CGAffineTransformMakeTranslation(0, -100)
        titleLabel.alpha = 0
     
        constraint1.constant = 0
        self.view.layoutIfNeeded()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowAnimatedContent, animations: { () -> Void in
            
            self.titleLabel.transform = CGAffineTransformIdentity
            self.titleLabel.alpha = 1
            }) { (_) -> Void in
            
                UIView.animateWithDuration(4, animations: { () -> Void in
//                    self.txt.transform = CGAffineTransformIdentity
                    self.constraint1.constant = 426
                    self.view.layoutIfNeeded()
                })
        }
    }
    
}
