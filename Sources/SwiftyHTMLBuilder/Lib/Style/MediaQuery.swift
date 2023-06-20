//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/21.
//

import Foundation

public enum MediaQueryType {
    case maxWidth(Int)
    case minWidth(Int)
    case none
    func buildMediaQueryString(for css: String) -> String {
        var resultString = ""
        switch self {
        case .maxWidth(let width):
            resultString += "@media screen and (max-width: \(width)px){"
        case .minWidth(let width):
            resultString += "@media screen and (min-width: \(width)px){"
        case .none:
            return ""
        }
        return resultString + css + "}"
    }
}
