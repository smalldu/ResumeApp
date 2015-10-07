//
//  ViewController.swift
//  MyResume
//
//  Created by duzhe on 15/10/6.
//  Copyright © 2015年 duzhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView:UIScrollView!
    
    @IBOutlet weak var container:UIView!
    
    var menuVc:MenuViewController?
    
    var homeVc:UIViewController?
    
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        scrollView.setContentOffset(CGPointMake(CGRectGetWidth(menuVc!.view.bounds), 0), animated: false)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        
        if let menuVc = menuVc{
            menuVc.showDetail={ v in
               self.toggleMenu()
               
                menuVc.view.superview?.subviews
                let myV = v as! ItemView
                for itv in (myV.superview?.subviews)!{
                    
                    if let itv = itv as? ItemView{
                        if itv == myV{
                            itv.isSelected = true
                            
                        }else{
                            itv.isSelected = false

                        }
                    }
                    
                }
                
                UIView.animateWithDuration(0.3, animations: {
                    myV.center = CGPointMake(self.view.bounds.width/2,-100)
                    myV.transform = CGAffineTransformMakeScale(0.5, 0.5)
                    
                     }){_ in
                        myV.transform = CGAffineTransformIdentity
                        myV.center.x = myV.originalX
                        myV.center.y = myV.originalY
                        menuVc.view.backgroundColor = v.backgroundColor
                        
                        
                        var details:UIViewController!
                        switch(myV.titleString){
                        case ResumeInfomation.BaseInfo.rawValue:
                            details = self.storyboard?.instantiateViewControllerWithIdentifier("basicInfo") as! BaseInfoViewController
                        case ResumeInfomation.OccupationalIntent.rawValue:
                            details = self.storyboard?.instantiateViewControllerWithIdentifier("Occupational") as! OccupationalViewController
                        case ResumeInfomation.PersonalProfile.rawValue:
                             details = self.storyboard?.instantiateViewControllerWithIdentifier("PersonalProfile") as! PersonalProfileViewController
                        case ResumeInfomation.EducationExperience.rawValue:
                            details = self.storyboard?.instantiateViewControllerWithIdentifier("EducationExperience") as! EducationExperienceViewController
                        case ResumeInfomation.LanguageSkill.rawValue:
                            details = self.storyboard?.instantiateViewControllerWithIdentifier("LanguageSkill") as! LanguageSkillViewController
                        case ResumeInfomation.WorkExperience.rawValue:
                            details = self.storyboard?.instantiateViewControllerWithIdentifier("WorkExperience") as! WorkExperienceViewController
                        case ResumeInfomation.ProjectExperience.rawValue:
                            details = self.storyboard?.instantiateViewControllerWithIdentifier("ProjectExperience") as! ProjectExperienceViewController
                        case ResumeInfomation.Skills.rawValue:
                            details = self.storyboard?.instantiateViewControllerWithIdentifier("Skills") as! SkillsViewController
                        case ResumeInfomation.AdditionalInfo.rawValue:
                            details = self.storyboard?.instantiateViewControllerWithIdentifier("AdditionalInfo") as! AdditionalInfoViewController
                        default:
                            break;
                        }
                        
                        //present
                        details.view.backgroundColor = myV.backgroundColor

                        self.addChildViewController(details)
                       
                        self.transitionFromViewController(self.homeVc!, toViewController: details, duration: 0.4 , options: UIViewAnimationOptions.TransitionCurlDown, animations: { () -> Void in
                            
                            
                            
                            }, completion: { (_) -> Void in
                                self.homeVc!.removeFromParentViewController()  //每次都把前一个移除
                                self.homeVc = details
                        })
                        
                }
                
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func toggleMenu(){
        let menuOff = CGRectGetWidth(menuVc!.view.bounds)
        scrollView.setContentOffset(scrollView.contentOffset.x != 0 ? CGPointZero:CGPointMake(menuOff, 0), animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "menuViewController"{
            let menu = segue.destinationViewController as! MenuViewController
            menuVc = menu
        }else if segue.identifier == "homeViewController"{
            let home = segue.destinationViewController
            homeVc = home
        }
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
    
        scrollView.pagingEnabled = scrollView.contentOffset.x < (scrollView.contentSize.width - CGRectGetWidth(scrollView.frame))
    }
    
    
}


