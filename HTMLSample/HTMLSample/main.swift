//
//  main.swift
//  HTMLSample
//
//  Created by Yuki Kuwashima on 2023/10/06.
//

import Foundation
import SwiftyHTMLBuilder

let projectRootPath = ProcessInfo.processInfo.environment["MY_ROOT"]!
let outputPath = URL(string: projectRootPath)!
    .appending(path: "Output")
    .appending(path: "index.html")
    .absoluteString

class MyHtml: HTML {
    var body: some HTMLBlock & AnyObject {
        div {
            p("test")
                .css("color", "red")
        }
    }
}

let compiled = MyHtml().compile()
try! compiled.write(toFile: outputPath, atomically: true, encoding: .utf8)
