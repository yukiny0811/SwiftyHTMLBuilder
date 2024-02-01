//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

internal extension String {
    static var quote: String {
        "\""
    }
    var quoted: String {
        String.quote + self + String.quote
    }
}
