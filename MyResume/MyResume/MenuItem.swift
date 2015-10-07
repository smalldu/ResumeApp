//
//  MenuItem.swift
//  MyResume
//
//  Created by duzhe on 15/10/6.
//  Copyright © 2015年 duzhe. All rights reserved.
//

import UIKit
let menuColors = [
    UIColor(red: 00/255, green: 41/255,  blue: 82/255,   alpha: 1.0),
    UIColor(red: 11/255,  green: 0x8D/255,  blue: 0xF0/255,  alpha: 1.0),
    UIColor(red: 95/255, green: 15/255, blue: 56/255,   alpha: 1.0),
    UIColor(red: 0xFF/255,  green: 0x4B/255, blue: 68/255,  alpha: 1.0),
    UIColor(red: 207/255, green: 34/255,  blue: 156/255, alpha: 1.0),
    UIColor(red: 14/255,  green: 88/255,  blue: 149/255, alpha: 1.0),
    UIColor(red: 15/255,  green: 193/255, blue: 231/255, alpha: 1.0),
    UIColor(red: 43/255,  green: 0xA3/255, blue: 67/255, alpha: 1.0),
    UIColor(red: 0x1C/255,  green: 0x0C/255, blue: 0x2A/255, alpha: 1.0)
]

let imgs = [
    UIImage(named: "base"),
    UIImage(named: "occupa"),
    UIImage(named: "work"),
    UIImage(named: "education"),
    UIImage(named: "langue"),
    UIImage(named: "project"),
    UIImage(named: "personal"),
    UIImage(named: "skills"),
    UIImage(named: "addition"),
]

class MenuItem {
    
    let title: String
    let symbol: UIImage
    let color: UIColor
    
    init(symbol: UIImage, color: UIColor, title: String) {
        self.symbol = symbol
        self.color  = color
        self.title  = title
    }
    
    static var sharedItems:[MenuItem] {
        var items = [MenuItem]()
        items.append(MenuItem(symbol: imgs[0]!, color: menuColors[0], title: ResumeInfomation.BaseInfo.rawValue))
        items.append(MenuItem(symbol: imgs[1]!, color: menuColors[1], title: ResumeInfomation.OccupationalIntent.rawValue))
        items.append(MenuItem(symbol: imgs[2]!, color: menuColors[2], title: ResumeInfomation.PersonalProfile.rawValue))
        items.append(MenuItem(symbol: imgs[3]!, color: menuColors[3], title: ResumeInfomation.EducationExperience.rawValue))
        items.append(MenuItem(symbol: imgs[4]!, color: menuColors[4], title: ResumeInfomation.LanguageSkill.rawValue))
        items.append(MenuItem(symbol: imgs[5]!, color: menuColors[5], title: ResumeInfomation.WorkExperience.rawValue))
        items.append(MenuItem(symbol: imgs[6]!, color: menuColors[6], title: ResumeInfomation.ProjectExperience.rawValue))
        items.append(MenuItem(symbol: imgs[7]!, color: menuColors[7], title: ResumeInfomation.Skills.rawValue))
        items.append(MenuItem(symbol: imgs[8]!, color: menuColors[8], title: ResumeInfomation.AdditionalInfo.rawValue))
        
        return items
    }
    
}

enum ResumeInfomation:String{
    
    case BaseInfo = "基本资料"
    case OccupationalIntent = "职业意向"
    case PersonalProfile = "个人简介"
    case EducationExperience = "教育经历"
    case LanguageSkill = "语言能力"
    case WorkExperience = "工作经历"
    case ProjectExperience = "项目经验"
    case Skills = "擅长技能"
    case AdditionalInfo = "附加信息"
    
}



