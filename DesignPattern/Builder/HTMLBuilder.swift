//
//  HTMLBuilder.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/17.
//

import Foundation

final class HTMLBuilder: Builder {
    
    private var writer: PrintWriter?
    
    func make(title: String) {
        writer = PrintWriter(filename: title + ".html")
        writer?.println("<html><head><title>" + title + "</title></head><body>")
        writer?.println("<h1>" + title + "</h1>")
    }
    
    func make(string: String) {
        writer?.println("<p>" + string + "</p>")
    }
    
    func make(items: [String]) {
        writer?.println("<ul>")
        items.forEach {
            writer?.println("<li>\($0)</li>")
        }
        writer?.println("</ul>")
    }
    
    func close() {
        writer?.println("</body></html>")
        do {
            try writer?.close()
        } catch {
            print("[PrintWriter] error: \(error)")
        }
    }
    
    func filename() -> String? {
        return writer?.filename
    }
    
    func result() -> String? {
        return writer?.result()
    }
}
