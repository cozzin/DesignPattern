//
//  CharDisplay.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/05.
//

import Foundation

final class CharDisplay: AbstractDisplay {
    
    private let character: Character
    
    init(_ character: Character) {
        self.character = character
    }
    
    override func open() -> String {
        return "<<"
    }
    
    override func print() -> String {
        return "\(character)"
    }
    
    override func close() -> String {
        return ">>"
    }
}
