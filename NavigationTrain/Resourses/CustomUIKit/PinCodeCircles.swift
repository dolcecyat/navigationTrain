//
//  PinCodeCircles.swift
//  NavigationTrain
//
//  Created by Алина Класс on 31.01.2025.
//

import Foundation
import UIKit

class PinCodeCircles: UIView {
    var dotsArray: [UIImageView] = []
    let stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildArray()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    private func buildArray() {
        for i in 0...3 {
            let view = UIImageView()
            view.tag = i
            view.image = UIImage(systemName: "circlebadge")
            view.tintColor = .systemGray
            stackView.addArrangedSubview(view)
            dotsArray.append(view)
        }
    }
    
    func paintCircle(index: Int) {
        UIView.animate(withDuration: 0.1) { [weak self] in
            self?.dotsArray[index].fillCircle()
        }
    }
    
    func emptyCircle(index: Int) {
        UIView.animate(withDuration: 0.1) { [weak self] in
            self?.dotsArray[index].emptyCircle()
        }
    }
}
