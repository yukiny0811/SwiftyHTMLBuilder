//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

enum Util {
    static func createHtmlID() -> String {
        return "ID" + UUID().uuidString.replacingOccurrences(of: "-", with: "")
    }
}
