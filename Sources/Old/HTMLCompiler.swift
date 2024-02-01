//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation

public enum HTMLCompiler {
    public static func compile(with creator: HTMLBase) -> String {
        return resolve(with: [creator])
    }
    public static func resolve(with contents: [HTMLBase]) -> String {
        var resultString = ""
        for content in contents {
            resultString += content.process { newContents in
                resolve(with: newContents)
            }
        }
        return resultString
    }
}
