//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public extension HTMLBase {
    @discardableResult
    func position(_ value: CSSPosition) -> Self {
        self.css("padding-right", value.rawValue)
        return self
    }
}

public enum CSSPosition: String {
    case `static`
    case relative
    case absolute
    case fixed
    case sticky
    case inherit
    case initial
    case revert
    case unset
}
