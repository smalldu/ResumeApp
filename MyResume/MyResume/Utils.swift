//
//  Utils.swift
//  MyResume
//
//  Created by duzhe on 15/10/6.
//  Copyright © 2015年 duzhe. All rights reserved.
//

import UIKit

class Utils {
    
    static var width:CGFloat?
    
    class func delay(seconds: Double, completion:()->()) {
        let popTime = dispatch_time(DISPATCH_TIME_NOW, Int64( Double(NSEC_PER_SEC) * seconds ))
        
        dispatch_after(popTime, dispatch_get_main_queue()) {
            completion()
        }
    }
}
