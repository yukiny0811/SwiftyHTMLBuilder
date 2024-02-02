//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/02.
//

import Foundation

public enum OverflowType: String {
    case visible
    case hidden
    case clip
    case scroll
    case auto
    
    case inherit
    case initial
    case revert
    case unset
}

public extension HTMLBlock {
    
    @discardableResult
    func overflow(_ type: OverflowType) -> Self {
        self.css("overflow", type.rawValue)
        return self
    }
    
}
