//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Ruslan on 8/11/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = String(slider.value)
        label.font = label.font.withSize(26)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
        
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
    }
    @IBAction func choiseSegment(_ sender: UISegmentedControl) {
        
        label.isHidden = false
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "The first segment is secected"
            label.textColor = .red
        case 1:
            label.text = "The second segment is selected"
            label.textColor = .blue
        case 2:
            label.text = "The third segment is selected"
            label.textColor = .yellow
        default:
            print("Sothing wrong!")
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        label.text = String(sender.value)
        
    }
}

