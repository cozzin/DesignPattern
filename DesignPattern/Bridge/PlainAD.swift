//
//  PlainAD.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/26.
//

import UIKit

class PlainAD {
    
    private let display: Display
    
    init(display: Display) {
        self.display = display
    }
    
    func start(on label: UILabel) {
        label.attributedText = display.on()
    }
    
    func end(on label: UILabel) {
        label.attributedText = display.off()
    }
}
