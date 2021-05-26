//
//  ViewController.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/03.
//

import UIKit

final class ViewController: UIViewController {
    
    private lazy var bridgePatternButton: UIButton = {
        let bridgePatternButton: UIButton = UIButton()
        bridgePatternButton.setTitleColor(.label, for: .normal)
        bridgePatternButton.setTitle("BridgePattern", for: .normal)
        bridgePatternButton.addTarget(self, action: #selector(didTouchBridgePatternButton), for: .touchUpInside)
        return bridgePatternButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(bridgePatternButton)
        bridgePatternButton.translatesAutoresizingMaskIntoConstraints = false
        bridgePatternButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bridgePatternButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc
    private func didTouchBridgePatternButton() {
        navigationController?.pushViewController(BridgePatternViewController(), animated: true)
    }

}
