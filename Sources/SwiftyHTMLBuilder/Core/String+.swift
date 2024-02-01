//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

extension String {
    
    static var quote: String {
        "\""
    }
    
    var quoted: String {
        String.quote + self + String.quote
    }
}
