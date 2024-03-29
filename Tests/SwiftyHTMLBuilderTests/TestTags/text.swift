//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

@testable import SwiftyHTMLBuilder
import SnapshotTesting
import XCTest
import WebKit

final class Test_text: XCTestCase {
    func test_text() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                text("ABCDE12345")
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
}
