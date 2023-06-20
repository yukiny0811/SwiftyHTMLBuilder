//
//  title.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class title: HTML {
    var title: String = ""
    public override func tagName() -> String? {
        "title"
    }
    public override func needsEndTag() -> Bool {
        true
    }
    public convenience init(_ t: String) {
        self.init{[]}
        self.title = t
    }
    public override func process(_ insideProcess: (_ contents: [HTMLBase]) -> String) -> String {
        "<title>" + title + "</title>"
    }
}
