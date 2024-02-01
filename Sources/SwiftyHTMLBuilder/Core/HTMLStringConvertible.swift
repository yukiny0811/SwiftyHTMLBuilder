//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public protocol HTMLStringConvertible {
    var htmlString: String { get }
}

extension String: HTMLStringConvertible {
    public var htmlString: String {
        self
    }
}

extension Int: HTMLStringConvertible {
    public var htmlString: String {
        String(self)
    }
}

extension Float: HTMLStringConvertible {
    public var htmlString: String {
        String(self)
    }
}

extension Double: HTMLStringConvertible {
    public var htmlString: String {
        String(self)
    }
}

extension Bool: HTMLStringConvertible {
    public var htmlString: String {
        String(self)
    }
}
