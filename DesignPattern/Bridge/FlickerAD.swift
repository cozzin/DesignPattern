//
//  FlickerAD.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/26.
//

import UIKit

final class FlickerAD: PlainAD {
    
    private var timer: DispatchSourceTimer?
    
    func startFlicker(on label: UILabel) {
        timer = DispatchSource.makeTimerSource(queue: .global())
        timer?.schedule(deadline: .now(), repeating: .seconds(1))
        
        var isOn: Bool = false
        timer?.setEventHandler(handler: { [weak self, weak label] in
            DispatchQueue.main.async {
                guard let label = label else { return }
                if isOn {
                    self?.end(on: label)
                } else {
                    self?.start(on: label)
                }
                isOn.toggle()
            }
        })
        timer?.resume()
    }
    
    func endFlicker(on label: UILabel) {
        timer?.cancel()
        timer = nil
        end(on: label)
    }
}
