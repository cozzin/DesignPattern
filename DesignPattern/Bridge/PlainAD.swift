//
//  PlainAD.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/26.
//

import Foundation

class PlainAD {
    
    private let display: Display
    
    init(display: Display) {
        self.display = display
    }
    
    func start() {
        display.on()
    }
    
    func end() {
        display.off()
    }
}
