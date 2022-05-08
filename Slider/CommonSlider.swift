//
//  CommonSlider.swift
//  Slider
//
//  Created by Aram Arakelyan on 08.05.22.
//

import Foundation
import UIKit


class CommonSlider: UIView {
    var labelName: ButtonColor!
    var stackView: UIStackView!
    var label: UILabel!
    var slider: UISlider!
    init(labelName: ButtonColor) {
        super.init(frame: .zero)
        self.labelName = labelName
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
}

extension CommonSlider {
    
    enum ButtonColor: String {
        case red = "Red Color"
        case blue = "Blue Color"
        case green = "Green Color"
    }
    
    func initStackView() {
        stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 3
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    func initLabel() {
        label = UILabel()
        label.text = "color"
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func initSlider() {
        slider = UISlider()
        slider.maximumValue = 10
        slider.minimumValue = 0
        slider.thumbTintColor = .red
        slider.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setViewHierarchy() {
        stackView.addSubview(label)
        stackView.addSubview(slider)
    }
    
    func commonInit() {
        initStackView()
        initLabel()
        activateConstraints()
        setViewHierarchy()
    }
    
    func activateConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
    }
    
}
