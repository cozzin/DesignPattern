//
//  Iterator.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/03.
//

import Foundation

protocol Iterator {
    associatedtype Value
    
    func hasNext() -> Bool
    func next() -> Value
}
