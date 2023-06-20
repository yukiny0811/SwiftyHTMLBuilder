//
//  HTML.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

open class HTML: HTMLBase {
    public var id = "ID" + UUID().uuidString.replacingOccurrences(of: "-", with: "")
    public var idAttrString: String {
        " id=" + id.quoted
    }
    public var styleTagString: String {
        "<style>#\(id){" + styleStrings + "}" + mediaQueryString + "</style>"
    }
    public func tagName() -> String? {
        nil
    }
    public func needsEndTag() -> Bool {
        true
    }
    public var mediaQueryString: String = ""
    public var contents: [HTMLBase]
    public var attributeStrings: String = ""
    public var styleStrings: String = ""
    
    public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        self.contents = contents()
    }
    public func process(_ insideProcess: (_ contents: [HTMLBase]) -> String) -> String {
        if let tag = tagName() {
            if needsEndTag() {
                return styleTagString + "<" + tag + idAttrString + attributeStrings + ">" + insideProcess(self.contents) + "</\(tag)>"
            } else {
                return styleTagString + "<" + tag + idAttrString + attributeStrings + ">" + insideProcess(self.contents)
            }
        } else {
            return insideProcess(self.contents)
        }
    }
    
    @discardableResult
    public func attr(_ name: String, _ value: String) -> Self {
        attributeStrings += " " + name + "=" + value.quoted
        return self
    }
    
    @discardableResult
    public func css(_ name: String, _ value: String, mediaQuery: MediaQueryType = .none) -> Self {
        switch mediaQuery {
        case .none:
            styleStrings += name + ":" + value + ";"
        case .minWidth(_):
            mediaQueryString += mediaQuery.buildMediaQueryString(for: "#\(id){"+name+":"+value+";"+"}")
        case .maxWidth(_):
            mediaQueryString += mediaQuery.buildMediaQueryString(for: "#\(id){"+name+":"+value+";"+"}")
        }
        return self
    }
}

public protocol HTMLBase {
    var contents: [HTMLBase] { get set }
    func process(_ insideProcess: (_ contents: [HTMLBase]) -> String) -> String
    
    @discardableResult
    func attr(_ name: String, _ value: String) -> Self
    
    @discardableResult
    func css(_ name: String, _ value: String, mediaQuery: MediaQueryType) -> Self
}
