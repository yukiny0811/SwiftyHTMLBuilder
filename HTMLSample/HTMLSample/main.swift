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
            h1("this is h1")
            a(href: "https://github.com/yukiny0811/SwiftyHTMLBuilder") {
                text("this is link")
            }
            MediaQuery(.minWidth, value: "800px") {
                h2("media query")
                    .width(200, unit: .px)
                    .color(.white)
                    .backgroundColor(.blue)
                    .css("display", "block")
            } falseContents: {
                h2("media query")
                    .width(200, unit: .px)
                    .color(.white)
                    .backgroundColor(.green)
                    .css("display", "block")
            }
        }
    }
}

let compiled = MyHtml().compile()
try! compiled.write(toFile: outputPath, atomically: true, encoding: .utf8)
