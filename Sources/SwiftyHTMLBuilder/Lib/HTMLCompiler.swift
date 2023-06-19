//
//  HTMLCompiler.swift
//  HTMLCreator
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import Foundation

public enum HTMLCompiler {
    public static func compile(with creator: some HTML) -> String {
        return resolve(with: creator.contents)
    }
    public static func resolve(with contents: [HTML]) -> String {
        var resultString = ""
        for content in contents {
            resultString += content.process { newContents in
                resolve(with: newContents)
            }
        }
        return resultString
    }
}
