//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

@testable import SwiftyHTMLBuilder
import SnapshotTesting
import XCTest
import WebKit

final class Test_padding: XCTestCase {
    
    func test1() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    div {
                        p("test")
                            .backgroundColor(.cyan)
                            .padding("50px")
                    }
                }
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
    
    func test2() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    div {
                        p("test")
                            .backgroundColor(.cyan)
                            .paddingLeft(50, unit: .px)
                    }
                }
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
    
    func test3() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    div {
                        p("test")
                            .backgroundColor(.cyan)
                            .paddingRight(50, unit: .px)
                    }
                }
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
    
    func test4() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    div {
                        p("test")
                            .backgroundColor(.cyan)
                            .paddingTop(50, unit: .px)
                    }
                }
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
    
    func test5() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    div {
                        p("test")
                            .backgroundColor(.cyan)
                            .paddingBottom(50, unit: .px)
                    }
                }
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
}
