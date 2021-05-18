//
//  BuilderTests.swift
//  DesignPatternTests
//
//  Created by seongho.hong on 2021/05/17.
//

import XCTest
@testable import DesignPattern

final class BuilderTests: XCTestCase {

    func testTextBuilder() throws {
        let textBuilder = TextBuilder()
        let director = Director(builder: textBuilder)
        director.construct()
        let result = textBuilder.result()
        XCTAssertEqual(
            result,
            """
            ==========================
            『Gretting』
            ◼ 아침과 낮에

             · 좋은 아침입니다.
             · 안녕하세요.
            
            ◼ 밤에

             · 안녕하세요
             · 안녕히 주무세요.
             · 안녕히 계세요.
            
            ==========================

            """
        )
    }
    
    func testHTMLBuilder() throws {
        let htmlBuilder = HTMLBuilder()
        let director = Director(builder: htmlBuilder)

        director.construct()

        XCTAssertEqual(htmlBuilder.filename(), "Gretting.html")
        XCTAssertEqual(
            htmlBuilder.result(),
            """
            <html><head><title>Gretting</title></head><body>
            <h1>Gretting</h1>
            <p>아침과 낮에</p>
            <ul>
            <li>좋은 아침입니다.</li>
            <li>안녕하세요.</li>
            </ul>
            <p>밤에</p>
            <ul>
            <li>안녕하세요</li>
            <li>안녕히 주무세요.</li>
            <li>안녕히 계세요.</li>
            </ul>
            </body></html>
            
            """
        )
    }

}
