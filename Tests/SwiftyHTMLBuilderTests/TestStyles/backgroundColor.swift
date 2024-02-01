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

final class Test_backgroundColor: XCTestCase {
    
    func test_backgroundColor1() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    p("test")
                }
                .backgroundColor(.cyan)
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
    
    func test_backgroundColor2() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    p("test")
                }
                .backgroundColor(r: 255, g: 0, b: 255)
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
    
    func test_backgroundColor3() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    p("test")
                }
                .backgroundColor(r: 255, g: 0, b: 255, a: 50)
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
    
    func test_backgroundColor4() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                body {
                    p("test")
                }
                .backgroundColor("#ff0000")
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
}
