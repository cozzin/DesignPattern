//
//  BridgePatternViewController.swift
//  DesignPattern
//
//  Created by seongho.hong on 2021/05/26.
//

import UIKit

final class BridgePatternViewController: UIViewController {
    
    private lazy var plainGrayAD = PlainAD(display: GrayScaleDisplay(text: "Plain Gray AD", label: plainGrayLabel))
    private lazy var plainColorAD = PlainAD(display: ColorDisplay(text: "Plain Color AD", label: plainColorLabel))
    private lazy var flickerGrayAD = FlickerAD(display: GrayScaleDisplay(text: "Flicker Gray AD", label: flickerGrayLabel))
    private lazy var flickerColorAD = FlickerAD(display: ColorDisplay(text: "Flicker Color AD", label: flickerColorLabel))
    
    private lazy var plainGrayLabel = UILabel()
    private lazy var plainColorLabel = UILabel()
    private lazy var flickerGrayLabel = UILabel()
    private lazy var flickerColorLabel = UILabel()
    
    private lazy var stackView: UIStackView = {
        let stackView: UIStackView = UIStackView(
            arrangedSubviews: [
                plainGrayLabel,
                plainColorLabel,
                flickerGrayLabel,
                flickerColorLabel
            ]
        )
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private lazy var startButton: UIButton = {
        let startButton: UIButton = UIButton()
        startButton.backgroundColor = .systemGreen
        startButton.setTitleColor(.label, for: .normal)
        startButton.setTitle("START", for: .normal)
        startButton.addTarget(self, action: #selector(didTouchStartButton), for: .touchUpInside)
        return startButton
    }()
    
    private lazy var endButton: UIButton = {
        let endButton: UIButton = UIButton()
        endButton.backgroundColor = .systemRed
        endButton.setTitleColor(.label, for: .normal)
        endButton.setTitle("END", for: .normal)
        endButton.addTarget(self, action: #selector(didTouchEndButton), for: .touchUpInside)
        return endButton
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let buttonStackView: UIStackView = UIStackView(
            arrangedSubviews: [
                startButton,
                endButton
            ]
        )
        buttonStackView.axis = .horizontal
        buttonStackView.distribution = .fillEqually
        return buttonStackView
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        stackView.backgroundColor = .systemBackground
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        view.addSubview(buttonStackView)
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        buttonStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor).isActive = true
        buttonStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        buttonStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        buttonStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        didTouchEndButton()
    }
    
    @objc
    private func didTouchStartButton() {
        plainGrayAD.start()
        plainColorAD.start()
        flickerGrayAD.startFlicker()
        flickerColorAD.startFlicker()
    }
    
    @objc
    private func didTouchEndButton() {
        plainGrayAD.end()
        plainColorAD.end()
        flickerGrayAD.endFlicker()
        flickerColorAD.endFlicker()
    }
}
