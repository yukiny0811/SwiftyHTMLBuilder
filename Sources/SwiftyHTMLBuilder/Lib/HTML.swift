//
//  HTML.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public protocol HTML {
    @HTMLBuilder var contents: [HTML] { get }
    func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String
}

public extension HTML {
    func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String {
        insideProcess(self.contents)
    }
}
