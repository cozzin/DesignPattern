//
//  GrayScaleDisplay.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/26.
//

import UIKit

final class GrayScaleDisplay: Display {
    
    private let text: String
    private let label: UILabel
    
    init(text: String, label: UILabel) {
        self.text = text
        self.label = label
    }
    
    deinit {
        print("deinit GrayScaleDisplay")
    }
    
    func on() {
        label.attributedText = NSAttributedString(string: text, attributes: [
            .font: UIFont.boldSystemFont(ofSize: 30),
            .foregroundColor: UIColor.systemGray
        ])
    }
    
    func off() {
        label.attributedText = NSAttributedString(string: text.map { _ in "." }.joined(), attributes: [
            .font: UIFont.boldSystemFont(ofSize: 30),
            .foregroundColor: UIColor.black
        ])
    }
}
