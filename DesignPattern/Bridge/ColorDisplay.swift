//
//  ColorDisplay.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/26.
//

import UIKit

final class ColorDisplay: Display {
    
    private let text: String
    
    init(text: String) {
        self.text = text
    }
    
    func on() -> NSAttributedString {
        return NSAttributedString(string: text, attributes: [
            .font: UIFont.boldSystemFont(ofSize: 30),
            .foregroundColor: UIColor(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1),
                alpha: 1.0
            )
        ])
    }
    
    func off() -> NSAttributedString {
        return NSAttributedString(string: text.map { _ in "." }.joined(), attributes: [
            .font: UIFont.boldSystemFont(ofSize: 30),
            .foregroundColor: UIColor.black
        ])
    }
}
