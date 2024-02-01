//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public extension HTML {
    
    @discardableResult
    func mediaQuery(_ mediaQuery: MediaQueryType, _ f: (HTML) -> ()) -> HTML {
        self.mediaQueryOpen = true
        self.mediaQueryString += mediaQuery.openMediaQueryString()
        f(self)
        self.mediaQueryString += mediaQuery.closeMediaQueryString()
        self.mediaQueryOpen = false
        return self
    }
}
