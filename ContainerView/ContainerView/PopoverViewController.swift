//
//  PopoverViewController.swift
//  ContainerView
//
//  Created by Harry Ng on 30/12/2015.
//  Copyright © 2015 STAY REAL. All rights reserved.
//

import Cocoa

class PopoverViewController: NSViewController {

    let popover = NSPopover()
    
    class func loadFromNib() -> PopoverViewController {
        let vc = NSStoryboard(name: "Main", bundle: nil).instantiateControllerWithIdentifier("Popover") as! PopoverViewController
        vc.popover.contentViewController = vc
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        popover.behavior = .Transient
    }
    
    func showPopover(view: NSView) {
        popover.showRelativeToRect(view.bounds, ofView: view, preferredEdge: .MaxY)
    }
    
    @IBAction func click(sender: NSButton) {
        NSNotificationCenter.defaultCenter().postNotificationName(CVNotifications.Click.rawValue, object: self)
        
        // Dismiss popover
        popover.performClose(sender)
    }
}
