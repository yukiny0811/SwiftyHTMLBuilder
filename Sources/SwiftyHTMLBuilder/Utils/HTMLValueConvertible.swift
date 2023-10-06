//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public protocol HTMLValueConvertible {
    func convertToString() -> String
}

extension String: HTMLValueConvertible {
    public func convertToString() -> String {
        self
    }
}

extension Int: HTMLValueConvertible {
    public func convertToString() -> String {
        String(self)
    }
}

extension Float: HTMLValueConvertible {
    public func convertToString() -> String {
        String(self)
    }
}

extension Double: HTMLValueConvertible {
    public func convertToString() -> String {
        String(self)
    }
}

extension Bool: HTMLValueConvertible {
    public func convertToString() -> String {
        String(self)
    }
}
