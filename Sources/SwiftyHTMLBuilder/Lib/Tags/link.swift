//
//  link.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public struct link: HTML {
    public var contents: [HTML]
    public var argsString: String = ""
    public init(rel: String, href: String, crossOrigin: Bool = false) {
        self.contents = []
        self.argsString += " rel=" + rel.quoted
        self.argsString += " href=" + href.quoted
        if crossOrigin {
            self.argsString += " crossorigin"
        }
    }
    public func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String {
        "<link" + argsString + ">"
    }
}
