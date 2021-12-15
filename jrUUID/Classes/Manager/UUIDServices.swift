//
//  UUIDServices.swift
//  jrUUID
//
//  Created by Josh Luongo on 9/12/21.
//  Copyright © 2021 JR Apps Pty. Ltd. All rights reserved.
//

import Foundation
import AppKit

class UUIDServices {
    
    @objc func generateUuid(_ userData: Any?, _ error: Any?) {
        if let pb = userData as? NSPasteboard {
            let text = NSString(string: CodeManager.generate())
            pb.declareTypes([.string], owner: nil)
            pb.clearContents()
            _ = pb.writeObjects([text])
        }
    }
    
    @objc func generateReplaceUuid(_ userData: Any?, _ error: Any?) {
        generateUuid(userData, error)
    }
    
}
