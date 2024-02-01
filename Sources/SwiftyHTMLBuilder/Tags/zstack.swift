//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public class zstack: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock]
    
    public var tagName: String = "div"
    
    public var needsEndTag: Bool = true
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
    public convenience init(vAlign: FlexAlignment, hAlign: FlexAlignment, @HTMLBuilder _ contents: () -> [HTMLBlock]) {
        var processedContents: [HTMLBlock] = []
        for (i, content) in contents().enumerated() {
            processedContents.append(
                content
                    .css("z-stack", i+1)
                    .position(.absolute)
            )
            
        }
        self.init { processedContents }
        self.css("display", "flex")
        self.css("flex-direction", "row")
        self.css("align-items", vAlign.rawValue)
        self.css("justify-content", hAlign.rawValue)
    }
}
