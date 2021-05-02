//
//  Aggregate.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/03.
//

import Foundation

protocol Aggregate {
    associatedtype Iterator
    
    func iterator() -> Iterator
}
