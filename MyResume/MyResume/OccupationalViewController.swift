//
//  Occupational.swift
//  MyResume
//  职业意向
//  Created by duzhe on 15/10/7.
//  Copyright © 2015年 duzhe. All rights reserved.
//

import UIKit

class OccupationalViewController:BaseViewController {

    @IBOutlet weak var titleLabel:UILabel!
        @IBOutlet weak var hand1Label:UILabel!
        @IBOutlet weak var hand2Label:UILabel!
        @IBOutlet weak var hand3Label:UILabel!
        @IBOutlet weak var hand4Label:UILabel!
    
        @IBOutlet weak var att1Label:UILabel!
        @IBOutlet weak var att2Label:UILabel!
        @IBOutlet weak var att3Label:UILabel!
        @IBOutlet weak var att4Label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.transform =  CGAffineTransformMakeTranslation(0, -100)
        titleLabel.alpha = 0
        
        hand1Label.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
        hand2Label.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
        hand3Label.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
        hand4Label.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
        
        att1Label.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
        att2Label.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
        att3Label.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
        att4Label.transform = CGAffineTransformMakeTranslation(0, -1 * self.view.bounds.height)
    }
    
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowAnimatedContent, animations: { () -> Void in
            
            self.titleLabel.transform = CGAffineTransformIdentity
            self.titleLabel.alpha = 1
            }) { (_) -> Void in
                
                UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                    self.hand1Label.transform = CGAffineTransformIdentity
                    self.att1Label.transform = CGAffineTransformIdentity
                    }){_ in
                        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                            self.hand2Label.transform = CGAffineTransformIdentity
                            self.att2Label.transform = CGAffineTransformIdentity
                            }){_ in
                                
                                UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                                    self.hand3Label.transform = CGAffineTransformIdentity
                                    self.att3Label.transform = CGAffineTransformIdentity
                                    }){_ in
                                        
                                        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                                            self.hand4Label.transform = CGAffineTransformIdentity
                                            self.att4Label.transform = CGAffineTransformIdentity
                                            },completion: nil)
                                }
                        }
                        
                }

            
        }
        
    }
}
