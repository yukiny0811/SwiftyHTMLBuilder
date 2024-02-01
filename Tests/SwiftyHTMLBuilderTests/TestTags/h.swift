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

final class Test_h: XCTestCase {
    func test_h() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                div {
                    h1("h1")
                    h2("h2")
                    h3("h3")
                    h4("h4")
                    h5("h5")
                    h6("h6")
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
