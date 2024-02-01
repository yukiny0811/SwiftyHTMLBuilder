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

final class Test_doctype: XCTestCase {
    
    func test_doctype() throws {
        class TestHTML: HTML {
            var body: some HTMLBlock & AnyObject {
                doctype()
            }
        }
        let compiled = TestHTML().compile()
        let webView = WKWebView()
        webView.frame = .init(x: 0, y: 0, width: 300, height: 300)
        webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: webView, as: .image, timeout: 15)
    }
    
    func test_doctype_compiled() throws {
        class TestHTML: HTML {
            var body: some HTMLBlock & AnyObject {
                doctype()
            }
        }
        let compiled = TestHTML().compile()
        print(compiled)
        XCTAssertTrue(compiled.contains("<!DOCTYPE html"))
    }
}
