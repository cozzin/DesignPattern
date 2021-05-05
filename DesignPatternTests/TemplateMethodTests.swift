//
//  TemplateMethodTests.swift
//  DesignPatternTests
//
//  Created by seongho.hong on 2021/05/05.
//

import XCTest
@testable import DesignPattern

final class TemplateMethodTests: XCTestCase {

    func testTemplateMethodPattern() throws {
        let display1 = CharDisplay("H")
        let display2 = StringDisplay("Hello, world.")
        let display3 = StringDisplay("안녕하세요.")
        
        XCTAssertEqual(
            display1.display(),
            "<<HHHHH>>"
        )
        XCTAssertEqual(
            display2.display(),
            """
            +-------------+
            |Hello, world.|
            |Hello, world.|
            |Hello, world.|
            |Hello, world.|
            |Hello, world.|
            +-------------+
            """
        )
        XCTAssertEqual(
            display3.display(),
            """
            +------+
            |안녕하세요.|
            |안녕하세요.|
            |안녕하세요.|
            |안녕하세요.|
            |안녕하세요.|
            +------+
            """
        )
    }
}
