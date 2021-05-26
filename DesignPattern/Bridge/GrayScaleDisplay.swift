//
//  GrayScaleDisplay.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/26.
//

import UIKit

final class GrayScaleDisplay: Display {
    
    private let text: String
    
    init(text: String) {
        self.text = text
    }
    
    func on() -> NSAttributedString {
        return NSAttributedString(string: text, attributes: [
            .font: UIFont.boldSystemFont(ofSize: 30),
            .foregroundColor: UIColor.systemGray
        ])
    }
    
    func off() -> NSAttributedString {
        return NSAttributedString(string: text.map { _ in "." }.joined(), attributes: [
            .font: UIFont.boldSystemFont(ofSize: 30),
            .foregroundColor: UIColor.black
        ])
    }
}
