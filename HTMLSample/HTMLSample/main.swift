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
    .deletingLastPathComponent()
    .appending(path: "Output")
    .appending(path: "index.html")
    .absoluteString

let MainHTML = all {
    p("hello")
        .color(.red)
        .margin(10)
    p("world")
        .backgroundColor(.lavender)
        .color(.black)
        .margin(10)
        .mediaQuery(.minWidth(800)) { h in
            h.color(.aqua)
            h.margin(100)
        }
    p {
        "aetaset"
        "reataet"
        br()
        "etatast"
    }
    a(href: "https://drafts.csswg.org/css-color/#color-syntax", text: "test link")
}
    .margin(0)
    .padding(0)


let html2 = head {
    title("aaa")
}

var test = false

let html3 = all {
    zstack {
        h1("aaa")
            .color(.white)
        h1("bbbb")
            .color(.blue)
        vstack {
            h1("ccccc")
                .color(.yellow)
            for i in 0...10 {
                h1("dddddd\(i)").color(.yellow)
                h1("dddddd\(i*10)").color(.yellow)
                "aaa"
            }
            h1("aaaaa")
            if test {
                h2("asegasegagse")
                    .color(.blue)
            }
            if !test {
                h2("gaegag")
                    .color(.blue)
            }
        }
        .css("width", "100%")
        .css("height", "100%")
        .backgroundColor(.brown)
        .css("overflow", "hidden")
    }
    .css("width", 500)
    .css("height", 500)
    .backgroundColor(.red)
}
    .padding(0)
    .margin(0)

try! html3.compiled().write(toFile: outputPath, atomically: true, encoding: .utf8)
