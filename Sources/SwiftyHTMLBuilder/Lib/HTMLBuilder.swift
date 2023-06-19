//
//  HTMLBuilder.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

@resultBuilder
public struct HTMLBuilder {
    public static func buildBlock(_ components: any HTML) -> any HTML {
        components
    }
    public static func buildBlock(_ components: any HTML...) -> [any HTML] {
        components
    }
    public static func buildBlock(_ components: [any HTML], _ c2: [any HTML]) -> [any HTML] {
        components + c2
    }
}
