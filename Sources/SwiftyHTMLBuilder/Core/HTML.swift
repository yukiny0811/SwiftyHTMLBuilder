//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public protocol HTML {
    @HTMLBuilder
    var content: any HTMLBlock { get }
}

public extension HTML {
    func compile() -> String {
        HTMLCompiler.compile(with: self.content)
    }
    
    func build() -> HTMLBlock {
        self.content
    }
}
