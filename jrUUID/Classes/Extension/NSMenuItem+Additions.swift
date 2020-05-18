//
//  NSMenuItem+Additions.swift
//  dart Deploy
//
//  Created by Josh Luongo on 30/10/19.
//  Copyright © 2019 JR Apps Pty. Ltd. All rights reserved.
//

import AppKit

extension NSMenuItem {
    
    public convenience init(title string: String, action selector: Selector?, keyEquivalent charCode: String?, enabled: Bool? = true, indentationLevel: Int? = 0) {
        self.init(title: string, action: selector, keyEquivalent: charCode ?? "");
        
        self.isEnabled = enabled ?? true
        self.indentationLevel = indentationLevel ?? 0
    }
        
}
