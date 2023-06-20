//
//  HTMLBuilder.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

@resultBuilder
public struct HTMLBuilder {
    public static func buildBlock(_ components: HTMLBase...) -> [HTMLBase] {
        components
    }
    public static func buildOptional(_ components: [HTMLBase]?) -> [HTMLBase] {
        components ?? []
    }
}
