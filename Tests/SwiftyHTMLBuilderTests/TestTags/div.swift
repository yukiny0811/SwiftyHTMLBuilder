//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

@testable import SwiftyHTMLBuilder
import SnapshotTesting
import XCTest

final class Test_div: XCTestCase {
    func test_div() throws {
        class TestHTML: HTML {
            var body: some HTMLBlock & AnyObject {
                div {
                    p("a")
                    p("b")
                    p("c")
                }
            }
        }
        let vc = SnapshotVC_300()
        let compiled = TestHTML().compile()
        vc.webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: vc, as: .image, timeout: 15)
    }
}
