//
//  title.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public struct title: HTML {
    public var contents: [HTML]
    public var argsString: String = ""
    public init(_ t: String) {
        self.contents = []
        self.argsString = t
    }
    public func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String {
        "<title>" + argsString + "</title>"
    }
}
