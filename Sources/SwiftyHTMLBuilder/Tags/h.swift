//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public class h1: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock] = []
    
    public var tagName: String = "h1"
    
    public var needsEndTag: Bool = true
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public convenience init(_ value: String) {
        self.init { [] as [HTMLBlock] }
        self.additionalInsideString = value
    }
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
}

public class h2: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock] = []
    
    public var tagName: String = "h2"
    
    public var needsEndTag: Bool = true
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public convenience init(_ value: String) {
        self.init { [] as [HTMLBlock] }
        self.additionalInsideString = value
    }
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
}

public class h3: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock] = []
    
    public var tagName: String = "h3"
    
    public var needsEndTag: Bool = true
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public convenience init(_ value: String) {
        self.init { [] as [HTMLBlock] }
        self.additionalInsideString = value
    }
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
}

public class h4: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock] = []
    
    public var tagName: String = "h4"
    
    public var needsEndTag: Bool = true
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public convenience init(_ value: String) {
        self.init { [] as [HTMLBlock] }
        self.additionalInsideString = value
    }
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
}

public class h5: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock] = []
    
    public var tagName: String = "h5"
    
    public var needsEndTag: Bool = true
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public convenience init(_ value: String) {
        self.init { [] as [HTMLBlock] }
        self.additionalInsideString = value
    }
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
}

public class h6: HTMLBlock {
    
    public var id: String = Util.createHtmlID()
    
    public var contents: [HTMLBlock] = []
    
    public var tagName: String = "h6"
    
    public var needsEndTag: Bool = true
    
    public var attributeString: String = ""
    
    public var styleString: String = ""
    
    public var additionalInsideString: String = ""
    
    public convenience init(_ value: String) {
        self.init { [] as [HTMLBlock] }
        self.additionalInsideString = value
    }
    
    public required init(@HTMLBuilder _ contents: () -> [HTMLBlock]) {
        self.contents = contents()
    }
    
}
