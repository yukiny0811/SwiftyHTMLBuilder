//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

@resultBuilder
public struct HTMLBuilder {
    public static func buildBlock(_ component: HTMLBase) -> [HTMLBase] {
        [component]
    }
    public static func buildBlock(_ components: HTMLBase...) -> [HTMLBase] {
        components
    }
    public static func buildBlock(_ components: [HTMLBase]) -> [HTMLBase] {
        components
    }
    public static func buildBlock(_ components: [HTMLBase], _ components2: [HTMLBase]) -> [HTMLBase] {
        components + components2
    }
    public static func buildOptional(_ component: [HTMLBase]?) -> HTMLBase {
        if let c = component {
            return transparentGroup{c}
        } else {
            return transparentGroup{[""]}
        }
    }
    public static func buildArray(_ components: [HTMLBase]) -> HTMLBase {
        transparentGroup{components}
    }
    public static func buildArray(_ components: [[HTMLBase]]) -> HTMLBase {
        transparentGroup{components.map{v in transparentGroup{v}}}
    }
}
