//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import Foundation

public enum HTMLCompiler {
    
    public static func compile(with creator: HTMLBlock) -> String {
        return resolve(with: [creator])
    }
    
    public static func resolve(with contents: [HTMLBlock]) -> String {
        var resultString = ""
        for content in contents {
            resultString += content.process { newContents in
                resolve(with: newContents)
            }
        }
        return resultString
    }
}
