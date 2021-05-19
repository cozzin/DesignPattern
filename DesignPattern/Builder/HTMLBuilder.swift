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

// MARK: - PrintWriter

final class PrintWriter {
    
    enum Exception: Error {
        case invalidfileURL
    }
    
    fileprivate let filename: String
    private var contents: String
    
    init(filename: String) {
        self.filename = filename
        self.contents = ""
    }
    
    func println(_ text: String) {
        contents.append(text + "\n")
    }
    
    func close() throws {
        guard let fileURL = FileManager
                .default
                .urls(for: .documentDirectory, in: .userDomainMask)
                .first?
                .appendingPathComponent(filename) else {
            throw Exception.invalidfileURL
        }
        
        try contents.write(to: fileURL, atomically: true, encoding: .utf8)
    }
    
    func result() -> String {
        return contents
    }
}
