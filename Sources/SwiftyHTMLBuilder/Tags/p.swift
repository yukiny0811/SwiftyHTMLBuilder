//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public class p: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock] = []
    
    public var tagName: String = "p"
    
    public var needsEndTag: Bool = true
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public convenience init(_ value: String) {
        self.init { [] as [HTMLBlock] }
        self.additionalInsideString = value
    }
    
    public convenience init(_ value: String, @HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.init(contents)
        self.additionalInsideString = value
    }
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
}
