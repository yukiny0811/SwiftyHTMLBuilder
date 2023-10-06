//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class h1: HTML {
    public override var tagName: String { "h1" }
    public override var needsEndTag: Bool { true }
    
    public init(_ text: String) {
        super.init { [text] }
    }
    
    public override init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}

public class h2: HTML {
    public override var tagName: String { "h2" }
    public override var needsEndTag: Bool { true }
    
    public init(_ text: String) {
        super.init { [text] }
        self.contents = [text]
    }
    
    public override init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}

public class h3: HTML {
    public override var tagName: String { "h3" }
    public override var needsEndTag: Bool { true }
    
    public init(_ text: String) {
        super.init { [text] }
        self.contents = [text]
    }
    
    public override init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}

public class h4: HTML {
    public override var tagName: String { "h4" }
    public override var needsEndTag: Bool { true }
    
    public init(_ text: String) {
        super.init { [text] }
        self.contents = [text]
    }
    
    public override init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}

public class h5: HTML {
    public override var tagName: String { "h5" }
    public override var needsEndTag: Bool { true }
    
    public init(_ text: String) {
        super.init { [text] }
        self.contents = [text]
    }
    
    public override init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}

public class h6: HTML {
    public override var tagName: String { "h6" }
    public override var needsEndTag: Bool { true }
    
    public init(_ text: String) {
        super.init { [text] }
        self.contents = [text]
    }
    
    public override init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}
