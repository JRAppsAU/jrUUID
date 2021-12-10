//
//  CodeManager.swift
//  jrUUID
//
//  Created by Josh Luongo on 18/5/20.
//  Copyright © 2020 JR Apps Pty. Ltd. All rights reserved.
//

import Foundation
import Cocoa

class CodeManager {
    
    /// Generate a UUID.
    ///
    /// - Returns: The UUID
    @objc static func generate() -> String {
        return NSUUID().uuidString.lowercased()
    }
    
    /// Generate and copy UUIDs.
    ///
    /// - Parameter count: Number of codes to make..
    @objc static func generateAndCopy(count: Int = 1) {
        // Get the code.
        var contents: [String] = [];
        
        for _ in 0..<count {
            contents.append(CodeManager.generate())
        }

        // Copy
        NSPasteboard.general.declareTypes([.string], owner: nil)
        NSPasteboard.general.setString(contents.joined(separator: "\n"), forType: .string)
    }
    
}
