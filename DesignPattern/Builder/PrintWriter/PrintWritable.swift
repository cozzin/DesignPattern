//
//  PrintWritable.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/19.
//

import Foundation

protocol PrintWritable {
    init(filename: String)
    func close() throws
    func findFileURL() -> URL?
    func println(_ text: String)
    func result() -> String
}
