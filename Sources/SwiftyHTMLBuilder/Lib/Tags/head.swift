//
//  head.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public struct head: HTML {
    public var contents: [HTML]
    public var argsString: String = ""
    public init(@HTMLBuilder _ contents: () -> [HTML]) {
        self.contents = contents()
    }
    public func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String {
        "<head" + argsString + ">" + insideProcess(self.contents) + "</head>"
    }
}
