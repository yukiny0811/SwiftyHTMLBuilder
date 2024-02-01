//
//  Util.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

internal enum Util {
    
    static func createUUID() -> String {
        return UUID().uuidString.replacingOccurrences(of: "-", with: "")
    }
    
    
}
