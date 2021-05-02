//
//  IteratorTests.swift
//  DesignPatternTests
//
//  Created by seongho.hong on 2021/05/03.
//

import XCTest
@testable import DesignPattern

final class IteratorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_whenAppendNothing_thenIterateCorrectly() throws {
        let bookShelf = BookShelf(maxSize: 0)
        let iterator = bookShelf.iterator()
        
        var results: [String] = []
        while (iterator.hasNext()) {
            let book = iterator.next()
            results.append(book.name)
        }
        
        XCTAssertTrue(results.isEmpty)
    }
    
    func test_whenAppendOneBook_thenIterateCorrectly() throws {
        let bookNames: [String] = [
            "Around the World in 80 Days"
        ]

        let bookShelf = BookShelf(maxSize: 1)
        bookNames.forEach {
            bookShelf.append(Book(name: $0))
        }

        let iterator = bookShelf.iterator()
        var results: [String] = []
        while (iterator.hasNext()) {
            let book = iterator.next()
            results.append(book.name)
        }

        XCTAssertEqual(bookNames, results)
    }

    func test_whenAppendOneMoreBooks_thenIterateCorrectly() throws {
        let bookNames: [String] = [
            "Around the World in 80 Days",
            "Bible",
            "Cinderella",
            "Daddy-Long-Legs"
        ]

        let bookShelf = BookShelf(maxSize: 4)
        bookNames.forEach {
            bookShelf.append(Book(name: $0))
        }

        let iterator = bookShelf.iterator()
        var results: [String] = []
        while (iterator.hasNext()) {
            let book = iterator.next()
            results.append(book.name)
        }

        XCTAssertEqual(bookNames, results)
    }

}
