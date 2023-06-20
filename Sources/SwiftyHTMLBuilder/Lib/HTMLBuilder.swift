//
//  HTMLBuilder.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

@resultBuilder
public struct HTMLBuilder {
//    public static func buildBlock(_ component: HTMLBase) -> [HTMLBase] {
//        [component]
//    }
    public static func buildBlock(_ components: HTMLBase...) -> [HTMLBase] {
        components
    }
//    public static func buildBlock(_ components: [HTML], _ c2: [HTML]) -> [HTML] {
//        components + c2
//    }
//    public static func buildBlock(_ components: [HTML]) -> [HTML] {
//        components
//    }
}
