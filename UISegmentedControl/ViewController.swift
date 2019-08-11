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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.font = label.font.withSize(35)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
    }
    @IBAction func choiseSegment(_ sender: UISegmentedControl) {
        
    }
    

}

