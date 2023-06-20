//
//  meta.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class meta: HTML {
    public override func tagName() -> String? {
        "meta"
    }
    public override func needsEndTag() -> Bool {
        false
    }
    public convenience init(charset: CharsetEncodingType) {
        self.init({[]})
        self.attr("charset", charset.rawValue)
    }
    public convenience init(name: MetaName, content: String) {
        self.init{[]}
        self.attr("name", name.rawValue)
        self.attr("content", content)
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
