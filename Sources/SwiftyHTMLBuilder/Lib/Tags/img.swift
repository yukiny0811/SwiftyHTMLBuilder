//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public struct img: HTML {
    public var contents: [HTML]
    public var argsString: String = ""
    public init(src: String, alt: String) {
        self.contents = []
        self.argsString += " src=" + src.quoted
        self.argsString += " alt=" + alt.quoted
    }
    public func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String {
        "<img" + argsString + ">"
    }
}
