//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/02.
//

import Foundation

public enum ScrollSnapAlign: String {
    case none
    case start
    case end
    case center
    
    case inherit
    case initial
    case revert
    case unset
}

public extension HTMLBlock {
    
    @discardableResult
    func scrollSnapAlign(_ align: ScrollSnapAlign) -> Self {
        self.css("scroll-snap-align", align.rawValue)
        return self
    }
    
}
