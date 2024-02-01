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
        document {
            doctype()
            html {
                MyHead().build()
                MyBody().build()
            }
        }
    }
}

class MyHead: HTML {
    var content: HTMLBlock {
        head {
            meta(charset: .utf8)
            title("SwiftyHTMLBuilder Example")
        }
    }
}

class MyBody: HTML {
    var content: HTMLBlock {
        body {
            h1("SwiftyHTMLBuilder")
            
            hstack(spacing: "100px") {
                p("hstack1")
                p("hstack1")
                p("hstack1")
            }
            .backgroundColor(.aliceblue)
            
            hstack(equalSpacing: true) {
                p("hstack2")
                p("hstack2")
                p("hstack2")
            }
            
            vstack(spacing: "10px") {
                p("vstack1")
                p("vstack2")
                p("vstack3")
            }
            .backgroundColor(.aliceblue)
            
            zstack(vAlign: .center, hAlign: .center) {
                img(src: "image.png")
                    .width(300, unit: .px)
                vstack(spacing: "0px") {
                    h2("Swifty")
                        .margin(0)
                    h2("HTML")
                        .margin(0)
                }
                .color(.white)
            }
            
            vstack(spacing: "10px") {
                for i in 0..<10 {
                    if i.isMultiple(of: 2) {
                        MyCell(count: i).build()
                    }
                }
            }
        }
    }
}

class MyCell: HTML {
    let count: Int
    init(count: Int) {
        self.count = count
    }
    var content: HTMLBlock {
        hstack(spaceBetween: true) {
            h3("cell")
            h3(String(count))
        }
        .width(400, unit: .px)
        .backgroundColor(.aliceblue)
    }
}

let compiled = MyHtml().compile()
try! compiled.write(toFile: outputPath, atomically: true, encoding: .utf8)
