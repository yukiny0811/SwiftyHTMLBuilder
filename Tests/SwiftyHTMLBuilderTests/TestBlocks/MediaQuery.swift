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

final class Test_MediqQuery: XCTestCase {
    
    func test_minWidth() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    MediaQuery(.minWidth, value: "250px") {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.blue)
                            .css("display", "block")
                    } falseContents: {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.green)
                            .css("display", "block")
                    }
                }
            }
        }
        let compiled = TestHTML().compile()
        
        let webViewLarge = WKWebView()
        webViewLarge.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webViewLarge.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewLarge, as: .image, timeout: 15)
        
        let webViewSmall = WKWebView()
        webViewSmall.frame = .init(x: 0, y: 0, width: 200, height: 200)
        webViewSmall.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewSmall, as: .image, timeout: 15)
    }
    
    func test_maxWidth() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    MediaQuery(.maxWidth, value: "250px") {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.blue)
                            .css("display", "block")
                    } falseContents: {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.green)
                            .css("display", "block")
                    }
                }
            }
        }
        let compiled = TestHTML().compile()
        
        let webViewLarge = WKWebView()
        webViewLarge.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webViewLarge.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewLarge, as: .image, timeout: 15)
        
        let webViewSmall = WKWebView()
        webViewSmall.frame = .init(x: 0, y: 0, width: 200, height: 200)
        webViewSmall.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewSmall, as: .image, timeout: 15)
    }
    
    func test_minHeight() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    MediaQuery(.minHeight, value: "250px") {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.blue)
                            .css("display", "block")
                    } falseContents: {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.green)
                            .css("display", "block")
                    }
                }
            }
        }
        let compiled = TestHTML().compile()
        
        let webViewLarge = WKWebView()
        webViewLarge.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webViewLarge.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewLarge, as: .image, timeout: 15)
        
        let webViewSmall = WKWebView()
        webViewSmall.frame = .init(x: 0, y: 0, width: 200, height: 200)
        webViewSmall.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewSmall, as: .image, timeout: 15)
    }
    
    func test_maxHeight() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    MediaQuery(.maxHeight, value: "250px") {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.blue)
                            .css("display", "block")
                    } falseContents: {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.green)
                            .css("display", "block")
                    }
                }
            }
        }
        let compiled = TestHTML().compile()
        
        let webViewLarge = WKWebView()
        webViewLarge.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webViewLarge.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewLarge, as: .image, timeout: 15)
        
        let webViewSmall = WKWebView()
        webViewSmall.frame = .init(x: 0, y: 0, width: 200, height: 200)
        webViewSmall.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewSmall, as: .image, timeout: 15)
    }
    
    func test_landscape() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    MediaQuery(.orientation, value: "landscape") {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.blue)
                            .css("display", "block")
                    } falseContents: {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.green)
                            .css("display", "block")
                    }
                }
            }
        }
        let compiled = TestHTML().compile()
        
        let webViewLarge = WKWebView()
        webViewLarge.frame = .init(x: 0, y: 0, width: 200, height: 300)
        webViewLarge.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewLarge, as: .image, timeout: 15)
        
        let webViewSmall = WKWebView()
        webViewSmall.frame = .init(x: 0, y: 0, width: 300, height: 200)
        webViewSmall.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewSmall, as: .image, timeout: 15)
    }
    
    func test_portrait() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    MediaQuery(.orientation, value: "portrait") {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.blue)
                            .css("display", "block")
                    } falseContents: {
                        p("media query")
                            .width(100, unit: .px)
                            .color(.white)
                            .backgroundColor(.green)
                            .css("display", "block")
                    }
                }
            }
        }
        let compiled = TestHTML().compile()
        
        let webViewLarge = WKWebView()
        webViewLarge.frame = .init(x: 0, y: 0, width: 200, height: 300)
        webViewLarge.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewLarge, as: .image, timeout: 15)
        
        let webViewSmall = WKWebView()
        webViewSmall.frame = .init(x: 0, y: 0, width: 300, height: 200)
        webViewSmall.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webViewSmall, as: .image, timeout: 15)
    }
}
