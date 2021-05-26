//
//  Display.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/26.
//

import Foundation

protocol Display {
    func on() -> NSAttributedString
    func off() -> NSAttributedString
}
