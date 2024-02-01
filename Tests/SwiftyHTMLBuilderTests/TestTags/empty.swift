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

final class Test_empty: XCTestCase {
    
    func test_empty() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                empty()
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
    
    func test_empty_compiled() throws {
        class TestHTML: HTML {
            var content: HTMLBlock {
                empty()
            }
        }
        let compiled = TestHTML().compile()
        XCTAssertTrue(compiled.isEmpty)
    }
}
