//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public protocol HTMLBase {
    var contents: [HTMLBase] { get set }
    func process(_ insideProcess: (_ contents: [HTMLBase]) -> String) -> String
    
    @discardableResult
    func attr(_ name: String, _ value: HTMLValueConvertible) -> Self
    
    @discardableResult
    func css(_ name: String, _ value: HTMLValueConvertible, mediaQuery: MediaQueryType) -> Self
}

public extension HTMLBase {
    func compiled() -> String {
        HTMLCompiler.compile(with: self)
    }
}
