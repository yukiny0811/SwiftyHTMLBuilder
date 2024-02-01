//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

open class HTML: HTMLBase {
    
    public let id = "ID" + Util.createUUID()
    public func createStyleTagString() -> String {
        if let customCSSTag {
            return "<style>\(customCSSTag){" + styleStrings + "}" + mediaQueryString + "</style>"
        } else {
            return "<style>#\(id){" + styleStrings + "}" + mediaQueryString + "</style>"
        }
    }
    
    open var tagName: String { "empty" }
    open var needsEndTag: Bool { true }
    open var customCSSTag: String? { nil }
    
    public var attributeStrings: String = ""
    public var styleStrings: String = ""
    public var mediaQueryString: String = ""
    public var mediaQueryOpen: Bool = false
    
    public var contents: [HTMLBase]
    
    public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        self.contents = contents()
    }
    
    open func process(_ insideProcess: (_ contents: [HTMLBase]) -> String) -> String {
        if tagName == "empty" {
            return createStyleTagString() + insideProcess(self.contents)
        } else {
            if needsEndTag {
                return createStyleTagString() + "<" + tagName + " id=" + id.quoted + attributeStrings + ">" + insideProcess(self.contents) + "</\(tagName)>"
            } else {
                return createStyleTagString() + "<" + tagName + " id=" + id.quoted + attributeStrings + ">" + insideProcess(self.contents)
            }
        }
    }
    
    @discardableResult
    public func attr(_ name: String, _ value: HTMLValueConvertible) -> Self {
        attributeStrings += " " + name + "=" + value.convertToString().quoted
        return self
    }
    
    @discardableResult
    public func css(_ name: String, _ value: HTMLValueConvertible, mediaQuery: MediaQueryType = .none) -> Self {
        if mediaQueryOpen {
            mediaQueryCss(name, value)
            return self
        }
        switch mediaQuery {
        case .none:
            styleStrings += name + ":" + value.convertToString() + ";"
        case .minWidth(_), .maxWidth(_):
            if let customCSSTag {
                mediaQueryString += mediaQuery.buildMediaQueryString(for: "\(customCSSTag){"+name+":"+value.convertToString()+";"+"}")
            } else {
                mediaQueryString += mediaQuery.buildMediaQueryString(for: "#\(id){"+name+":"+value.convertToString()+";"+"}")
            }
        }
        return self
    }
    
    @discardableResult
    private func mediaQueryCss(_ name: String, _ value: HTMLValueConvertible) -> Self {
        if let customCSSTag {
            mediaQueryString += "\(customCSSTag){" + name + ":" + value.convertToString() + ";" + "}"
        } else {
            mediaQueryString += "#\(id){" + name + ":" + value.convertToString() + ";" + "}"
        }
        return self
    }
}

