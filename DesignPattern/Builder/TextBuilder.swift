//
//  TextBuilder.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/17.
//

import Foundation

final class TextBuilder: Builder {
    
    private var buffer: String = ""
    
    func make(title: String) {
        buffer.append("==========================\n")
        buffer.append("『\(title)』")
        buffer.append("\n")
    }
    
    func make(string: String) {
        buffer.append("◼ \(string)\n")
        buffer.append("\n")
    }
    
    func make(items: [String]) {
        buffer.append(contentsOf: items.flatMap { " · \($0)\n" })
        buffer.append("\n")
    }
    
    func close() {
        buffer.append("==========================\n")
    }
    
    func result() -> String {
        return buffer
    }
}
