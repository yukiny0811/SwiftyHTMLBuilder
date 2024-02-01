//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public class meta: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock]
    
    public var tagName: String = "meta"
    
    public var needsEndTag: Bool = false
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public convenience init(charset: String) {
        self.init { [] as [HTMLBlock] }
        self.attr("charset", charset)
    }
    
    convenience init(charset: CharsetEncodingType) {
        self.init { [] as [HTMLBlock] }
        self.attr("charset", charset.rawValue)
    }
    
    convenience init(description: String) {
        self.init { [] as [HTMLBlock] }
        self.attr("name", MetaName.description.rawValue)
        self.attr("content", description)
    }
    
    convenience init(viewport: String) {
        self.init { [] as [HTMLBlock] }
        self.attr("name", MetaName.viewport.rawValue)
        self.attr("content", viewport)
    }
    
    convenience init(name: String, content: String) {
        self.init { [] as [HTMLBlock] }
        self.attr("name", name)
        self.attr("content", content)
    }
    
    convenience init(property: String, content: String) {
        self.init { [] as [HTMLBlock] }
        self.attr("property", property)
        self.attr("content", content)
    }
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
}
