//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public struct br: HTML {
    public var contents: [HTML]
    public var argsString: String = ""
    public init() {
        self.contents = []
    }
    public func process(_ insideProcess: (_ contents: [HTML]) -> String) -> String {
        "<br>"
    }
}
