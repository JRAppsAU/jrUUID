//
//  AppDelegate.swift
//  jrUUID
//
//  Created by Josh Luongo on 18/5/20.
//  Copyright © 2020 JR Apps Pty. Ltd. All rights reserved.
//

import Cocoa
import AppKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    /// Status Item.
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialise your application
        constructMenu()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    // mark: - Menu Builder
    
    
    /// Build the menu.
    func constructMenu() {
        // Set Image
        if let button = statusItem.button {
            button.image = NSImage(named: "StatusIcon")
        }
        
        let menu = NSMenu()
                
        menu.autoenablesItems = true
        
        // Header
        menu.addItem(NSMenuItem(title: "Copy UUID", action: #selector(generateAndCopy(_:)), keyEquivalent: nil))
        menu.addItem(NSMenuItem.separator())
        
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
        
        statusItem.menu = menu
    }
    
    /// Generate and copy a UUID.
    ///
    /// - Parameter sender: Sender.
    @objc func generateAndCopy(_ sender: AnyObject?) {
        CodeManager.generateAndCopy()
    }
}

