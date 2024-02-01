//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

@testable import SwiftyHTMLBuilder
import SnapshotTesting
import XCTest

final class Test_text: XCTestCase {
    func test_text() throws {
        class TestHTML: HTML {
            var body: some HTMLBlock & AnyObject {
                text("ABCDE12345")
            }
        }
        let vc = SnapshotVC_300()
        let compiled = TestHTML().compile()
        vc.webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: vc, as: .image, timeout: 15)
    }
}
