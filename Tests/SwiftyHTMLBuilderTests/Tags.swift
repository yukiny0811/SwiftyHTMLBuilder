//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/06/20.
//

import XCTest
@testable import SwiftyHTMLBuilder
import Foundation
import RegexBuilder

final class TestTags: XCTestCase {
    
    func testA() throws {
        let content = HTML {
            a {
                "ABCDE12345"
            }
        }
        let compiled = HTMLCompiler.compile(with: content)
        let regex = try! Regex("^<style>.*{}</style><a id=\".*\">ABCDE12345</a>$")
        let match = compiled.wholeMatch(of: regex)
        XCTAssertNotNil(match)
    }
    
    func testBody() throws {
        let content = HTML {
            body {
                "ABCDE12345"
            }
        }
        let compiled = HTMLCompiler.compile(with: content)
        let regex = try! Regex("^<style>.*{}</style><body id=\".*\">ABCDE12345</body>$")
        let match = compiled.wholeMatch(of: regex)
        XCTAssertNotNil(match)
    }
}
