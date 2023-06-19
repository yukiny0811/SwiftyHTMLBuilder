//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

@resultBuilder
public struct StyleBuilder {
    public static func buildBlock(_ component: String) -> String {
        component
    }
    public static func buildBlock(_ components: String...) -> String {
        components.reduce("", +)
    }
    public static func buildBlock(_ components: [String], _ c2: [String]) -> String {
        (components + c2).reduce("", +)
    }
}
