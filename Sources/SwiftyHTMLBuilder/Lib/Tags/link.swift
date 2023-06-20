//
//  link.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class link: HTML {
    public override func tagName() -> String? {
        "link"
    }
    public override func needsEndTag() -> Bool {
        false
    }
    public convenience init(rel: String, href: String, crossOrigin: Bool = false) {
        self.init({[]})
        self.attr("rel", rel)
        self.attr("href", href)
        if crossOrigin {
            self.attr("crossorigin", "true")
        }
    }
}
