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
        // TODO: Set the initial paint color to "red"
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        print("First color: \(firstColor.color.name)")
        print("Second color: \(secondColor.color.name)")
        // TODO: Mix each selected color and set the paint color to the mixed color
    }
}
