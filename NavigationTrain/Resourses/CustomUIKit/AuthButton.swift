//
//  AuthButton.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//

import Foundation
import UIKit

class AuthButton: UIButton {
    var withText: String?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    convenience init (withText: String) {
        self.init()
        self.setupView(text: withText)
    }
    
    private func setupView(text: String) {
        self.setTitle(text, for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor =  UIColor(cgColor: CGColor(red: 0.13, green: 0.13, blue: 0.13, alpha: 1))
        self.layer.cornerRadius = 10

    }
}
