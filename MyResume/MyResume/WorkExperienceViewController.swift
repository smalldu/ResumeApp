//
//  WorkExperienceViewController.swift
//  MyResume
//
//  Created by duzhe on 15/10/7.
//  Copyright © 2015年 duzhe. All rights reserved.
//

import UIKit

class WorkExperienceViewController: BaseViewController {

    @IBOutlet weak var titleLabel:UILabel!
    
    @IBOutlet weak var work1:UITextView!
    @IBOutlet weak var work2:UITextView!
    @IBOutlet weak var work3:UITextView!
    @IBOutlet weak var work4:UITextView!
    
    @IBOutlet weak var constraint1:NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.transform =  CGAffineTransformMakeTranslation(0, -100)
        titleLabel.alpha = 0
        print("\(work3.center),\(work2.center)")
        
        work1.center.y += -100
        
        constraint1.constant = work1.bounds.height + work2.bounds.height + work3.bounds.height + 15
        
        self.view.layoutIfNeeded()
        
        work1.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
        work2.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
        work3.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
        work4.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowAnimatedContent, animations: { () -> Void in
            
            self.titleLabel.transform = CGAffineTransformIdentity
            self.titleLabel.alpha = 1
            
            
            
            
            }) { (_) -> Void in
                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                    
                    self.work1.transform = CGAffineTransformIdentity
                    
                    }){_ in
                        
                        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                            
                            self.work2.transform = CGAffineTransformIdentity
                            self.constraint1.constant =  self.work1.bounds.height + self.work2.bounds.height + 10
                            self.view.layoutIfNeeded()
                            
                            }){_ in
                                
                                UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                                    
                                    self.work3.transform = CGAffineTransformIdentity
                                    self.constraint1.constant =  self.work1.bounds.height + 5
                                    self.view.layoutIfNeeded()
                                    
                                    }){_ in
                                        
                                        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                                            
                                            self.work4.transform = CGAffineTransformIdentity
                                            self.constraint1.constant =  5
                                            self.view.layoutIfNeeded()
                                            
                                            }){_ in
                                                
                                                
                                        }
                                }
                                
                        }
                }
                
        }
        
    }

}
