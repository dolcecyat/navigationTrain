//
//  LogInPasswordTextField.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//

import Foundation
import UIKit

class LogInPasswordTextField: UITextField {
    var withText: String?
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
    
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
        self.placeholder = text
        self.textColor = .black
        self.layer.cornerRadius = 10
        self.backgroundColor = .lightGray
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.systemGray.cgColor
        self.autocapitalizationType = .none
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
