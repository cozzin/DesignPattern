//
//  Director.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/17.
//

import Foundation

final class Director {
    
    private let builder: Builder
    
    init(builder: Builder) {
        self.builder = builder
    }
    
    func construct() {
        builder.make(title: "Gretting")
        builder.make(string: "아침과 낮에")
        builder.make(items: [
            "좋은 아침입니다.",
            "안녕하세요."
        ])
        builder.make(string: "밤에")
        builder.make(items: [
            "안녕하세요",
            "안녕히 주무세요.",
            "안녕히 계세요."
        ])
        builder.close()
    }
}
