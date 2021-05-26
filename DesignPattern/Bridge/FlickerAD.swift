//
//  FlickerAD.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/26.
//

import UIKit

final class FlickerAD: PlainAD {
    
    private var timer: DispatchSourceTimer?
    
    func startFlicker() {
        timer = DispatchSource.makeTimerSource(queue: .global())
        timer?.schedule(deadline: .now(), repeating: .seconds(1))
        
        var isOn: Bool = false
        timer?.setEventHandler(handler: { [weak self] in
            DispatchQueue.main.async {
                if isOn {
                    self?.end()
                } else {
                    self?.start()
                }
                isOn.toggle()
            }
        })
        timer?.resume()
    }
    
    func endFlicker() {
        timer?.cancel()
        timer = nil
        end()
    }
}
