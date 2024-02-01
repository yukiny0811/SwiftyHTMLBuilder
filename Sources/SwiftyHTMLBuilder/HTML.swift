//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public protocol HTML {
    associatedtype Body: HTMLBlock
    var body: Body { get }
}

public extension HTML {
    func compile() -> String {
        HTMLCompiler.compile(with: self.body)
    }
}
