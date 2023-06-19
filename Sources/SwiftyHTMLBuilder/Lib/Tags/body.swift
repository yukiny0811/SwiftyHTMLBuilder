//
//  body.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public struct body: HTML {
    public var contents: [HTML]
    public var styleString: String
    public let id: String
    public var styleTagString: String {
        "<style>#\(self.id){\(self.styleString)}</style>"
    }
    public var selfIdString: String {
        " id=\(self.id.quoted)"
    }
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
        styleTagString + "<body" + selfIdString + ">" + insideProcess(self.contents) + "</body>"
    }
    public func styled(@StyleBuilder _ styles: () -> String) -> Self {
        let newId = UUID().uuidString
        return Self.init(self.contents, styleString: styles(), id: newId)
    }
}
