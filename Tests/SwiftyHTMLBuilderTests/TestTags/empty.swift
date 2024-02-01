//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

final class Test_empty: XCTestCase {
    
    func test_empty() throws {
        class TestHTML: HTML {
            var body: some HTMLBlock & AnyObject {
                empty{}
            }
        }
        let vc = SnapshotVC_300()
        let compiled = TestHTML().compile()
        vc.webView.loadHTMLString(compiled, baseURL: nil)
        assertSnapshot(of: vc, as: .image, timeout: 15)
    }
    
    func test_empty_compiled() throws {
        class TestHTML: HTML {
            var body: some HTMLBlock & AnyObject {
                empty{}
            }
        }
        let compiled = TestHTML().compile()
        XCTAssertTrue(compiled.isEmpty)
    }
}
