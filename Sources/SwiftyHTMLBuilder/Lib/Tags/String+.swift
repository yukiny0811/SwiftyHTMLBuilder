//
//  String+.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public extension String {
    static var quote: String {
        "\""
    }
    var quoted: String {
        String.quote + self + String.quote
    }
}
