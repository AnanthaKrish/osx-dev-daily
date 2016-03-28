//
//  ViewController.swift
//  NSTextView
//
//  Created by Harry Ng on 23/3/2016.
//  Copyright © 2016 STAY REAL. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var textView: MyTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.delegate = textView
        
        textView.string = "\u{E837}"
        textView.font = BulletPoint.font
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

