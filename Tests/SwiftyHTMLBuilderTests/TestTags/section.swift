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

final class Test_section: XCTestCase {
    func test_section() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                section {
                    text("this is section")
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
