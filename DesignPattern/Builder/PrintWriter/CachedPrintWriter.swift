//
//  CachedPrintWriter.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/19.
//

import Foundation

final class CachedPrintWriter: PrintWritable {
    
    private let writer: PrintWriter
    private var cachedFileURL: URL?
    
    init(filename: String) {
        self.writer = PrintWriter(filename: filename)
    }
    
    func close() throws {
        try writer.close()
    }
    
    func findFileURL() -> URL? {
        if cachedFileURL == nil {
            cachedFileURL = writer.findFileURL()
        }
        
        return cachedFileURL
    }
    
    func println(_ text: String) {
        writer.println(text)
    }
    
    func result() -> String {
        return writer.result()
    }
}
