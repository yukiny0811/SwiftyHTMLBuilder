//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public class document: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock] = []
    
    public var tagName: String = ""
    
    public var needsEndTag: Bool = false
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
    public func process(_ insideProcess: ([HTMLBlock]) -> String) -> String {
        return insideProcess(contents)
    }
}
