//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public protocol HTML {
    @HTMLBuilder
    var body: any HTMLBlock { get }
}

public extension HTML {
    func compile() -> String {
        HTMLCompiler.compile(with: self.body)
    }
    
    func build() -> HTMLBlock {
        self.body
    }
}
