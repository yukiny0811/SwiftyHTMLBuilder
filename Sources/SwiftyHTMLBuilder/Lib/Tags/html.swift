//
//  html.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public struct html: HTML {
    public var contents: [HTML]
    public var argsString: String = ""
    public init(@HTMLBuilder _ contents: () -> [HTML]) {
        self.contents = contents()
    }
    public func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String {
        "<html" + argsString + ">" + insideProcess(self.contents) + "</html>"
    }
//    func styles(@StyleBuilder _ s: () -> String) -> Self {
//        let newHTML
//    }
}
