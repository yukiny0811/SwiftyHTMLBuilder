//
//  meta.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public struct meta: HTML {
    public var contents: [HTML]
    public var argsString: String = ""
    public init(charset: CharsetEncodingType) {
        self.contents = []
        self.argsString += " charset=" + charset.rawValue.quoted
    }
    public init(name: MetaName, content: String) {
        self.contents = []
        self.argsString += " name=" + name.rawValue.quoted
        self.argsString += " content=" + content.quoted
    }
    public func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String {
        "<meta" + argsString + ">" + insideProcess(self.contents)
    }
}

public enum MetaName: String {
    case charset
    case description
    case viewport
}

public enum CharsetEncodingType: String {
    case utf8 = "utf-8"
}
