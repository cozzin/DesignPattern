//
//  BookShelf.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/03.
//

import Foundation

final class BookShelf: Aggregate {
    typealias Iterator = BookShelfIterator

    var count: Int {
        return books.count
    }

    private var books: [Book]
    private let maxSize: Int
    
    init(maxSize: Int) {
        self.books = []
        self.maxSize = maxSize
    }
    
    func append(_ book: Book) {
        books.append(book)
    }
    
    func book(at index: Int) -> Book {
        return books[index]
    }
    
    func iterator() -> Iterator {
        Iterator(bookShelf: self)
    }
}
