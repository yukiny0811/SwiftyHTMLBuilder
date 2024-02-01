//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public class MediaQuery: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock] = []
    
    public var tagName: String = ""
    
    public var needsEndTag: Bool = true
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    var mediaQueryString: String = ""
    
    public convenience init(
        _ type: MediaQueryType,
        value: HTMLStringConvertible,
        @HTMLBuilder trueContents: () -> [HTMLBlock],
        @HTMLBuilder falseContents: () -> [HTMLBlock]
    ) {
        
        let unwrappedTrueContents = trueContents()
        let unwrappedFalseContents = falseContents()
        
        var queryString = ""
        
        queryString += "@media not screen and (\(type.rawValue): \(value)){"
        for content in unwrappedTrueContents {
            Self.addDisplayNone(string: &queryString, to: content)
        }
        queryString += "}"
        
        queryString += "@media screen and (\(type.rawValue): \(value)){"
        for content in unwrappedFalseContents {
            Self.addDisplayNone(string: &queryString, to: content)
        }
        
        queryString += "}"
        
        self.init { unwrappedTrueContents + unwrappedFalseContents }
        
        self.mediaQueryString = queryString
    }
    
    static func addDisplayNone(string: inout String, to content: HTMLBlock) {
        string += "#\(content.id){ display:none !important; }"
        for c in content.contents {
            addDisplayNone(string: &string, to: c)
        }
    }
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
    public func process(_ insideProcess: ([HTMLBlock]) -> String) -> String {
        if needsEndTag {
            return additionalInsideString + insideProcess(self.contents) + "</\(tagName)>" + generateMediaQueryStyleString()
        } else {
            return additionalInsideString + insideProcess(self.contents) + generateMediaQueryStyleString()
        }
    }
    
    public func generateMediaQueryStyleString() -> String {
        return "<style>\(mediaQueryString)</style>"
    }
}
