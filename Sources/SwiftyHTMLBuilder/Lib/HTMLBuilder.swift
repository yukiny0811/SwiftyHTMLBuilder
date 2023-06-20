//
//  HTMLBuilder.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

@resultBuilder
public struct HTMLBuilder {
    public static func buildBlock(_ component: any HTMLBase) -> any HTMLBase {
        component
    }
    public static func buildBlock(_ components: any HTMLBase...) -> [any HTMLBase] {
        components
    }
    public static func buildBlock(_ components: [any HTMLBase]) -> [any HTMLBase] {
        components
    }
    public static func buildBlock(_ components: [any HTMLBase], _ c2: [any HTMLBase]) -> [any HTMLBase] {
        components + c2
    }
    public static func buildOptional(_ component: [any HTMLBase]?) -> any HTMLBase {
        if let c = component {
            return transparentGroup{c}
        } else {
            return transparentGroup{[""]}
        }
    }
    public static func buildArray(_ components: [any HTMLBase]) -> any HTMLBase {
        transparentGroup{components}
    }
    public static func buildArray(_ components: [[any HTMLBase]]) -> any HTMLBase {
        transparentGroup{components.map{v in transparentGroup{v}}}
    }
}
