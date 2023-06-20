//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public class img: HTML {
    public override func tagName() -> String? {
        "img"
    }
    public override func needsEndTag() -> Bool {
        false
    }
    public convenience init(src: String, alt: String) {
        self.init{[]}
        self.attr("src", src)
        self.attr("alt", alt)
    }
}
