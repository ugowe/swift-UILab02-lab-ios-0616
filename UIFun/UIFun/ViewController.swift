//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var firstSegment: UISegmentedControl!
    @IBOutlet weak var secondSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.backgroundColor = UIColor.redColor()
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        
        switch (first, second) {
        case ("red", "blue"), ("blue", "red"):
            return "purple"
        case ("red", "yellow"), ("yellow", "red"):
            return "orange"
        case ("yellow", "blue"), ("blue", "yellow"):
            return "green"
        case ("red", "red"):
            return "red"
        case ("yellow", "yellow"):
            return "yellow"
        case ("blue", "blue"):
            return "blue"
        default:
            return "red"
        }
        
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        let firstControl = firstSegment
        let secondControl = secondSegment
        
        var firstPaintColor = ""
        var secondPaintColor = ""
        var finalPaintColor = ""
        
        
        switch firstControl.selectedSegmentIndex {
        case 0:
            firstPaintColor = "red"
        case 1:
            firstPaintColor = "yellow"
        case 2:
            firstPaintColor = "blue"
        default:
            break
        }
        
        switch secondControl.selectedSegmentIndex {
        case 0:
            secondPaintColor = "red"
        case 1:
            secondPaintColor = "yellow"
        case 2:
            secondPaintColor = "blue"
        default:
            break
        }
        
        finalPaintColor = mixColors(withFirst: firstPaintColor, second: secondPaintColor)
        
        paintBucket.paintColorName = finalPaintColor
        
    
        
        
        
        
        
    }
}
