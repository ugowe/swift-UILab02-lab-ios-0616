//
//  ColorExtras.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

extension UIColor {
    var name: String {
        switch self {
        case UIColor.redColor(): return "Red"
        case UIColor.blueColor(): return "Blue"
        case UIColor.yellowColor(): return "Yellow"
        case UIColor.purpleColor(): return "Purple"
        case UIColor.orangeColor(): return "Orange"
        case UIColor.greenColor(): return "Green"
        default: assert(false, "Invalid paint color: \(self)")
        }
    }

    func mixColor(with color: UIColor) -> UIColor {
        switch self {
        case UIColor.redColor():
            switch color {
            case UIColor.redColor():
                return UIColor.redColor()
            case UIColor.yellowColor():
                return UIColor.orangeColor()
            case UIColor.blueColor():
                return UIColor.purpleColor()
            default:
                assert(false, "Invalid second color: \(color.name)")
            }
        case UIColor.yellowColor():
            switch color {
            case UIColor.redColor():
                return UIColor.orangeColor()
            case UIColor.yellowColor():
                return UIColor.yellowColor()
            case UIColor.blueColor():
                return UIColor.greenColor()
            default:
                assert(false, "Invalid second color: \(color.name)")
            }
        case UIColor.blueColor():
            switch color {
            case UIColor.redColor():
                return UIColor.purpleColor()
            case UIColor.yellowColor():
                return UIColor.greenColor()
            case UIColor.blueColor():
                return UIColor.blueColor()
            default:
                assert(false, "Invalid second color: \(color.name)")
            }
        default:
            assert(false, "Invalid first color: \(name)")
        }
    }
}

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
            return paintColor.name
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

extension UISegmentedControl {
    var color: UIColor {
        switch selectedSegmentIndex {
        case 0: return UIColor.redColor()
        case 1: return UIColor.yellowColor()
        case 2: return UIColor.blueColor()
        default: assert(false, "Invalid index: \(selectedSegmentIndex)")
        }
    }
}
