//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public class vstack: HTMLBlock {
    
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
    
    
    public convenience init(vAlign: FlexAlignment = .center, hAlign: FlexAlignment = .center, spacing: HTMLStringConvertible, @HTMLBuilder _ contents: () -> [HTMLBlock]) {
        var processedContents: [HTMLBlock] = []
        for (i, content) in contents().enumerated() {
            processedContents.append(content)
            if contents().count - 1 != i {
                processedContents.append(div{}.height(spacing))
            }
        }
        self.init { processedContents }
        self.css("display", "flex")
        self.css("flex-direction", "column")
        self.css("align-items", hAlign.rawValue)
        self.css("justify-content", vAlign.rawValue)
    }
    
    public convenience init(vAlign: FlexAlignment = .center, hAlign: FlexAlignment = .center, equalSpacing: Bool, @HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.init(contents)
        self.css("display", "flex")
        self.css("flex-direction", "column")
        self.css("align-items", hAlign.rawValue)
        if equalSpacing {
            self.css("justify-content", "space-evenly")
        } else {
            self.css("justify-content", vAlign.rawValue)
        }
    }
}
