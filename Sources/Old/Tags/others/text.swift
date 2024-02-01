//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

extension String: HTMLBase {
    public func attr(_ name: String, _ value: HTMLValueConvertible) -> String {
        ""
    }
    public func css(_ name: String, _ value: HTMLValueConvertible, mediaQuery: MediaQueryType = .none) -> String {
        ""
    }
    public var contents: [HTMLBase] {
        get {
            [self]
        }
        set {}
    }
    public func process(_ insideProcess: ([HTMLBase]) -> String) -> String {
        return self
    }
}
