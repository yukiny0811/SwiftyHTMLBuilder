//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public extension HTML {
    
    @discardableResult
    func color(_ value: String) -> Self {
        self.css("color", value)
        return self
    }
}
