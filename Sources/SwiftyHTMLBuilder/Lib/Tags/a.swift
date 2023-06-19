//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public struct a: HTML {
    public var contents: [HTML]
    public var argsString: String = ""
    public init(href: String, @HTMLBuilder _ contents: () -> [HTML]) {
        self.contents = contents()
        self.argsString += " href=" + href.quoted
    }
    public func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String {
        "<a" + argsString + ">" + insideProcess(self.contents) + "</a>"
    }
}
