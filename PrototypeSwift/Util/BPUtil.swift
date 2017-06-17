//
//  BPUtil.swift
//  BaseProjectSwift
//
//  Created by GeekRRK on 2016/11/24.
//  Copyright © 2016年 GeekRRK. All rights reserved.
//

import UIKit

class BPUtil: NSObject {
    class var green: UIColor {
        get {
            return UIColor.green
        }
    }
    
    class func localStr(_ str: String) -> String {
        return NSLocalizedString(str, comment: "")
    }
    
    /*
    func colorWithHexString(string2Convert: String) -> UIColor {
        var cString = string2Convert.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        if cString.characters.count < 6 {
            return UIColor.white
        }
        
        let index = cString.index(cString.startIndex, offsetBy: 0)
        cString = cString.substring(from: index);
        
        if cString.hasPrefix("#") {
            let index = cString.index(cString.startIndex, offsetBy: 1)
            cString = cString.substring(from: cString.index(after: index))
        }
        if cString.characters.count != 6 {
            return UIColor.white
        }
        
        var range: NSRange
        range.location = 0
        range.length = 2
        let rString = cString.substring(with: range)
        range.location = 2
        let gString = cString.substring(with: range)
        range.location = 4
        let bString = cString.substring(with: range)
        
        let r, g, b: UInt
    }
     */
}
