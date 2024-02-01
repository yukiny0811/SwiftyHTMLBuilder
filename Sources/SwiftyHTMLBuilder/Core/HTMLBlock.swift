//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/01/22.
//

import Foundation

public protocol HTMLBlock: AnyObject {
    
    var id: String { get }
    
    var contents: [HTMLBlock] { get set }
    
    var tagName: String { get }
    var needsEndTag: Bool { get }
    
    /// ex. width="100" height="100"
    var attributeString: String { get set }
    
    /// ex. background-color: red; color: blue;
    var styleString: String { get set }
    
    var additionalInsideString: String { get set }
    
    init(@HTMLBuilder _ contents: () -> [HTMLBlock])
    
    func process(_ insideProcess: (_ contents: [HTMLBlock]) -> String) -> String
}

public extension HTMLBlock {
    
    func compile() -> String {
        HTMLCompiler.compile(with: self)
    }
    
    @discardableResult
    func attr(_ name: String, _ value: some HTMLStringConvertible) -> Self {
        attributeString += " " + name + "=" + value.htmlString.quoted
        return self
    }
    
    @discardableResult
    func css(_ name: String, _ value: some HTMLStringConvertible) -> Self {
        styleString += name + ":" + value.htmlString + ";"
        return self
    }
    
    func process(_ insideProcess: (_ contents: [HTMLBlock]) -> String) -> String {
        if needsEndTag {
            return generateStyleTagString() + generateAttributeTagString() + additionalInsideString + insideProcess(self.contents) + "</\(tagName)>"
        } else {
            return generateStyleTagString() + generateAttributeTagString() + additionalInsideString + insideProcess(self.contents)
        }
    }
    
    func generateStyleTagString() -> String {
        return "<style>#\(id){" + styleString + "}" + "</style>"
    }
    
    func generateAttributeTagString() -> String {
        return "<\(tagName) id=\(id.quoted + attributeString)>"
    }
}
