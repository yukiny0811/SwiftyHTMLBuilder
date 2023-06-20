//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

//public class text: HTML {
//    var t: String = ""
//    public convenience init(_ t: String) {
//        self.init{[]}
//        self.t = t
//    }
//    public override func process(_ insideProcess: ([HTMLBase]) -> String) -> String {
//        t
//    }
//}

extension String: HTMLBase {
    public func attr(_ name: String, _ value: String) -> String {
        self
    }
    
    public func css(_ name: String, _ value: String, mediaQuery: MediaQueryType = .none) -> String {
        self
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
