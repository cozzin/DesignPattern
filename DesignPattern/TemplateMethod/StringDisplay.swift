//
//  StringDisplay.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/05.
//

import Foundation

final class StringDisplay: AbstractDisplay {
    
    private let string: String
    private let width: Int
    
    init(_ string: String) {
        self.string = string
        width = string.count
    }
    
    override func open() -> String {
        return printLine() + "\n"
    }
    
    override func print() -> String {
        return "|" + string + "|\n"
    }
    
    override func close() -> String {
        return printLine()
    }
    
    private func printLine() -> String {
        var result = "+"
        (1...width).forEach { _ in
            result += "-"
        }
        result += "+"
        return result
    }
}
