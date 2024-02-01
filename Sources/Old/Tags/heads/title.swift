//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class title: HTML {
    public override var tagName: String { "title" }
    public override var needsEndTag: Bool { true }
    
    @available(*, unavailable)
    public override init(_ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
    
    public init(_ titleString: String) {
        super.init { [titleString] }
    }
}
