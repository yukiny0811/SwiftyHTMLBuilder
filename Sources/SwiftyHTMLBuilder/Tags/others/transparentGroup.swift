//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public class transparentGroup: HTML {
    override public init(@HTMLBuilder _ contents: () -> [HTMLBase]) {
        super.init(contents)
    }
}
