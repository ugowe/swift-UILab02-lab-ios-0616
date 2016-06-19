//
//  ColorExtras.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

extension UIView {
    var paintColor: UIColor {
        get {
            return backgroundColor!
        }
        set {
            backgroundColor = newValue
        }
    }

    var paintColorName: String {
        get {
            switch paintColor {
            case UIColor.redColor(): return "Red"
            case UIColor.blueColor(): return "Blue"
            case UIColor.yellowColor(): return "Yellow"
            case UIColor.purpleColor(): return "Purple"
            case UIColor.orangeColor(): return "Orange"
            case UIColor.greenColor(): return "Green"
            default: assert(false, "Invalid paint color: \(paintColor)")
            }
        }
        set {
            switch newValue {
            case "red": paintColor = UIColor.redColor()
            case "blue": paintColor = UIColor.blueColor()
            case "yellow": paintColor = UIColor.yellowColor()
            case "purple": paintColor = UIColor.purpleColor()
            case "orange": paintColor = UIColor.orangeColor()
            case "green": paintColor = UIColor.greenColor()
            default: assert(false, "Invalid paint color: \(newValue)")
            }
        }
    }
}
