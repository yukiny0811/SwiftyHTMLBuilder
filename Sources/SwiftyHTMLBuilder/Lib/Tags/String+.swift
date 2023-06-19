//
//  String+.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

extension String: HTML {
    public var contents: [HTML] {
        get {
            self
        }
        set {}
    }
    
    public var argsString: String {
        get {
            ""
        }
        set {}
    }
    public func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String { self }
}

public extension String {
    static var quote: String {
        "\""
    }
    var quoted: String {
        String.quote + self + String.quote
    }
}
