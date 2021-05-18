//
//  Builder.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/17.
//

import Foundation

protocol Builder {
    func make(title: String)
    func make(string: String)
    func make(items: [String])
    func close()
}
