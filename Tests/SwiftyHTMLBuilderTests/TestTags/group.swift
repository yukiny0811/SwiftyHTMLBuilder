//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

@testable import SwiftyHTMLBuilder
import SnapshotTesting
import XCTest

final class Test_group: XCTestCase {
    
    func test_group() throws {
        class TestHTML: HTML {
            var body: some HTMLBlock & AnyObject {
                group{}
            }
        }
        let vc = SnapshotVC_300()
        let compiled = TestHTML().compile()
        vc.webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: vc, as: .image, timeout: 15)
    }
    
    func test_group_compiled() throws {
        class TestHTML: HTML {
            var body: some HTMLBlock & AnyObject {
                group{}
            }
        }
        let compiled = TestHTML().compile()
        XCTAssertTrue(compiled.isEmpty)
    }
}
