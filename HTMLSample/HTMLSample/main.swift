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
    var content: HTMLBlock {
        group {
            doctype()
            html {
                meta(charset: .utf8)
                title("SwiftyHTMLBuilder")
            }
            MyBody().build()
        }
    }
}

class MyBody: HTML {
    var content: HTMLBlock {
        body {
            p("this is p")
            a(href: "https://github.com/yukiny0811/SwiftyHTMLBuilder") {
                text("this is link")
                text("SwiftyHTMLBuilder")
            }
        }
    }
}

let compiled = MyHtml().compile()
try! compiled.write(toFile: outputPath, atomically: true, encoding: .utf8)
