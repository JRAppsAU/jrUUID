//
//  TodayViewController.swift
//  UUIDToday
//
//  Created by Josh Luongo on 18/5/20.
//  Copyright © 2020 JR Apps Pty. Ltd. All rights reserved.
//

import Cocoa
import NotificationCenter

class TodayViewController: NSViewController, NCWidgetProviding {

    /// The stepper.
    @IBOutlet var stepper: NSStepper!
    
    /// Input
    @IBOutlet var numberInput: NSTextField!

    override var nibName: NSNib.Name? {
        return NSNib.Name("TodayViewController")
    }

    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Update your data and prepare for a snapshot. Call completion handler when you are done
        // with NoData if nothing has changed or NewData if there is new data since the last
        // time we called you
        completionHandler(.noData)
    }
    
    @IBAction func generateCode(_ sender: AnyObject?) {
        CodeManager.generateAndCopy(count: Int(numberInput.intValue))
    }    
}
