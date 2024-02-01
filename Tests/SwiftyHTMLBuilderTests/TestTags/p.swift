//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

@testable import SwiftyHTMLBuilder
import SnapshotTesting
import XCTest

final class Test_p: XCTestCase {
    func test_p() throws {
        class TestHTML: HTML {
            var body: some HTMLBlock & AnyObject {
                p("ABCDE12345")
            }
        }
        let vc = SnapshotVC_300()
        let compiled = TestHTML().compile()
        vc.webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: vc, as: .image, timeout: 15)
    }
}
