//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/02.
//

import Foundation

public enum ScrollSnapType: String {
    case none
    case x
    case y
    case block
    case inline
    case both
    
    case inherit
    case initial
    case unset
}

public enum ScrollSnapMovementType: String {
    case mandatory
    case proximity
}

public extension HTMLBlock {
    
    @discardableResult
    func scrollSnapType(_ type: ScrollSnapType) -> Self {
        self.css("scroll-snap-type", type.rawValue)
        return self
    }
    
    @discardableResult
    func scrollSnapType(_ type: ScrollSnapType, movementType: ScrollSnapMovementType) -> Self {
        self.css("scroll-snap-type", type.rawValue + " " + movementType.rawValue)
        return self
    }
    
}
