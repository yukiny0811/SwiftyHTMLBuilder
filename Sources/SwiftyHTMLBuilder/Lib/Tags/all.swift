//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public struct all: HTML {
    public let id: String
    public var contents: [HTML]
    public var styleString: String = ""
    public init(@HTMLBuilder _ contents: () -> [HTML], styleString: String = "", id: String = UUID().uuidString) {
        self.contents = contents()
        self.styleString = styleString
        self.id = id
    }
    public init(_ contents: [HTML], styleString: String = "", id: String = UUID().uuidString) {
        self.contents = contents
        self.styleString = styleString
        self.id = id
    }
    public func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String {
        "<style>*{" + styleString + "}</style>" + insideProcess(self.contents)
    }
    public func styled(@StyleBuilder _ styles: () -> String) -> Self {
        return Self.init(self.contents, styleString: styles())
    }
}
