//
//  PrintWriter.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/19.
//

import Foundation

final class PrintWriter: PrintWritable {
    
    enum Exception: Error {
        case invalidfileURL
    }
    
    let filename: String
    private var contents: String
    
    init(filename: String) {
        self.filename = filename
        self.contents = ""
    }
    
    func println(_ text: String) {
        contents.append(text + "\n")
    }
    
    func close() throws {
        guard let fileURL = self.findFileURL() else {
            throw Exception.invalidfileURL
        }
        
        try contents.write(to: fileURL, atomically: true, encoding: .utf8)
    }
    
    func findFileURL() -> URL? {
        return FileManager
            .default
            .urls(for: .documentDirectory, in: .userDomainMask)
            .first?
            .appendingPathComponent(filename)
    }
    
    func result() -> String {
        return contents
    }
}
