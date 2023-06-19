//
//  doctype.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public struct doctype: HTML {
    public var contents: [HTML]
    public var argsString: String = ""
    public init() {
        self.contents = []
    }
    public func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String {
        "<!DOCTYPE html>" + insideProcess(self.contents)
    }
}
