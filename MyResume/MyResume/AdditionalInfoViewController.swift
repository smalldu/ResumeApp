//
//  AdditionalInfoViewController.swift
//  MyResume
//
//  Created by duzhe on 15/10/7.
//  Copyright © 2015年 duzhe. All rights reserved.
//

import UIKit

class AdditionalInfoViewController: BaseViewController {

    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var v1:UITextView!
    var viewHeight:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.transform =  CGAffineTransformMakeTranslation(0, -100)
        titleLabel.alpha = 0
        viewHeight = self.view.bounds.height
        
        v1.layer.borderColor = UIColor.whiteColor().CGColor
        v1.layer.borderWidth = 4
        v1.layer.cornerRadius = 10
        
        
        v1.transform =  CGAffineTransformMakeTranslation(-viewHeight, 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowAnimatedContent, animations: { () -> Void in
            
            self.titleLabel.transform = CGAffineTransformIdentity
            self.titleLabel.alpha = 1
            }) { (_) -> Void in
                
                UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                    self.v1.transform = CGAffineTransformIdentity
                    }, completion: nil)
                
        }
        
    }
    
}
