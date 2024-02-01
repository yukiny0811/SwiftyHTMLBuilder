//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/02.
//

import Foundation

public class img: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock] = []
    
    public var tagName: String = "img"
    
    public var needsEndTag: Bool = false
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public convenience init(src: String, alt: String = "") {
        self.init { [] as [HTMLBlock] }
        self.attr("src", src)
        self.attr("alt", alt)
    }
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
}
