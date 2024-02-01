//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

@resultBuilder
public struct HTMLBuilder {
    public static func buildBlock(_ component: HTMLBlock) -> [HTMLBlock] {
        [component]
    }
    public static func buildBlock(_ components: HTMLBlock...) -> [HTMLBlock] {
        components
    }
    public static func buildBlock(_ components: [HTMLBlock]) -> [HTMLBlock] {
        components
    }
    public static func buildBlock(_ components: [HTMLBlock], _ components2: [HTMLBlock]) -> [HTMLBlock] {
        components + components2
    }
    public static func buildOptional(_ component: [HTMLBlock]?) -> HTMLBlock {
        if let c = component {
            return group{c}
        } else {
            return group{[empty()]}
        }
    }
    public static func buildArray(_ components: [HTMLBlock]) -> HTMLBlock {
        group{components}
    }
    public static func buildArray(_ components: [[HTMLBlock]]) -> HTMLBlock {
        group{components.map{v in group{v}}}
    }
}
