//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var paintBucket: UIView!
    @IBOutlet weak var firstColor: UISegmentedControl!
    @IBOutlet weak var secondColor: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.paintColorName = "red"
    }

    func mixColors(withFirst first: String, second: String) -> String {
        switch first.lowercaseString {
        case "red":
            switch second.lowercaseString {
            case "red": return "red"
            case "yellow": return "orange"
            case "blue": return "purple"
            default: assert(false, "Invalid colors")
            }
        case "yellow":
            switch second.lowercaseString {
            case "red": return "orange"
            case "yellow": return "yellow"
            case "blue": return "green"
            default: assert(false, "Invalid colors")
            }
        case "blue":
            switch second.lowercaseString {
            case "red": return "purple"
            case "yellow": return "green"
            case "blue": return "blue"
            default: assert(false, "Invalid colors")
            }
        default:
            assert(false, "Invalid colors")
        }
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        print("First color: \(firstColor.color.name)")
        print("Second color: \(secondColor.color.name)")
        paintBucket.paintColorName = mixColors(withFirst: firstColor.color.name, second: secondColor.color.name)
    }
}
