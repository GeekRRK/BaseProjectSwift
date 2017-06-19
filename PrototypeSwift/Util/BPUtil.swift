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

}
