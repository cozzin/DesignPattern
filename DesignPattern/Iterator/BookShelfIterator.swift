//
//  BookShelfIterator.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/03.
//

import Foundation

final class BookShelfIterator: Iterator {
    typealias Value = Book
    
    private let bookShelf: BookShelf
    private var index: Int
    
    init(bookShelf: BookShelf) {
        self.bookShelf = bookShelf
        self.index = 0
    }
    
    func hasNext() -> Bool {
        return index < bookShelf.count
    }
    
    func next() -> Book {
        let book = bookShelf.book(at: index)
        index += 1
        return book
    }
}
