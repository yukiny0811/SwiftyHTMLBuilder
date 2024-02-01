//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public class a: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock] = []
    
    public var tagName: String = "a"
    
    public var needsEndTag: Bool = true
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public convenience init(href: String) {
        self.init { [] as [HTMLBlock] }
        self.attr("href", href)
    }
    
    public convenience init(href: String, @HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.init(contents)
        self.attr("href", href)
    }
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
}
