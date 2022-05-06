//
//  ViewController.swift
//  Slider
//
//  Created by Aram Arakelyan on 05.05.22.
//

import UIKit

class ViewController: UIViewController {
    var slider: UISlider!
    var label: UILabel!
    var labelValue = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initSlider()
        initLabel()
        addHerarchie()
        activateConstraints()
        slider.addTarget(self, action: #selector(getSliderValue), for: .valueChanged)
    }

    @objc func getSliderValue (sender: UISlider) {
        label.font = label.font.withSize(CGFloat(sender.value < 1 ? 24 : 24 * sender.value))
    }
}


extension ViewController {
   func initSlider() {
       slider = UISlider()
       slider.maximumValue = 10
       slider.minimumValue = 0
       slider.thumbTintColor = .red
       slider.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func initLabel() {
        label = UILabel()
        label.text = "Title"
        label.font = label.font.withSize(CGFloat(self.labelValue < 1 ? 24 : 24 * self.labelValue))
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addHerarchie() {
        view.addSubview(label)
        view.addSubview(slider)
    }
    
    private func activateConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            
            slider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            slider.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            slider.topAnchor.constraint(equalTo: label.topAnchor, constant: 40),
        ])
    }
}
