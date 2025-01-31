//
//  NumbersInputStack.swift
//  NavigationTrain
//
//  Created by Алина Класс on 31.01.2025.
//

import Foundation
import UIKit

class NumbersInputStack: UIView {
    
    var exitButtonCompletion: (() -> Void)?
    var deleteButtonCompletion: (() -> Void)?
    var generalCompletion: ((Int) -> Int)?
    
    var mainVStack = UIStackView()
    var firstLineHStack = UIStackView()
    var secondLineHStack = UIStackView()
    var thirdLineHStack = UIStackView()
    var lastLineHStack = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(exitButtonCompletion: @escaping () -> Void,deleteButtonCompletion: @escaping () -> Void,generalCompletion: @escaping (Int) -> Int) {
        self.init()
        self.exitButtonCompletion = exitButtonCompletion
        self.deleteButtonCompletion = deleteButtonCompletion
        self.generalCompletion = generalCompletion
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildtLineHStack(array: [Int],stack: UIStackView)-> UIStackView {
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 0
        for i in array {
            let button = makeButton(title: "\(i)")
            button.tag = i
            button.addTarget(self, action: #selector (numberButtonTapped), for: .touchUpInside)
            stack.addArrangedSubview(button)
        }
        return stack
    }
    
    private func buildLastLineHStack()-> UIStackView {
        let exitButton = makeButton(title: "Exit")
        exitButton.addTarget(self, action: #selector (exitButtonTapped), for: .touchUpInside)
        exitButton.titleLabel?.font = .systemFont(ofSize: 20)
        let zeroButton = makeButton(title: "0")
        zeroButton.addTarget(self, action: #selector (numberButtonTapped), for: .touchUpInside)
        let deleteButton = makeButton(title: "")
        deleteButton.addTarget(self, action: #selector (deleteButtonTapped), for: .touchUpInside)
        deleteButton.tintColor = .black
        deleteButton.setImage(UIImage(systemName: "delete.left"), for: .normal)
        lastLineHStack.addArrangedSubview(exitButton)
        lastLineHStack.addArrangedSubview(zeroButton)
        lastLineHStack.addArrangedSubview(deleteButton)
        lastLineHStack.axis = .horizontal
        lastLineHStack.spacing = 0
        lastLineHStack.distribution = .fillEqually
        return lastLineHStack
    }
    
    private func makeButton(title: String ) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .clear
        button.titleLabel?.font = .systemFont(ofSize: 35, weight: .bold)
        return button
    }
    private func setupUI() {
        firstLineHStack = buildtLineHStack(array: [1,2,3], stack: firstLineHStack)
        secondLineHStack = buildtLineHStack(array: [4,5,6], stack: secondLineHStack)
        thirdLineHStack = buildtLineHStack(array: [7,8,9], stack: thirdLineHStack)
        lastLineHStack = buildLastLineHStack()
        
        mainVStack.addArrangedSubview(firstLineHStack)
        mainVStack.addArrangedSubview(secondLineHStack)
        mainVStack.addArrangedSubview(thirdLineHStack)
        mainVStack.addArrangedSubview(lastLineHStack)
        self.addSubview(mainVStack)
        
        mainVStack.axis = .vertical
        mainVStack.spacing = 0
        mainVStack.distribution = .fillEqually
        mainVStack.translatesAutoresizingMaskIntoConstraints = false
        mainVStack.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        mainVStack.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mainVStack.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mainVStack.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

    }
    
    @objc private func numberButtonTapped(sender: UIButton) {
        guard let generalCompletion = generalCompletion else { return }
        generalCompletion(sender.tag)
        print(sender.tag)
    }
    
    @objc func exitButtonTapped(sender: UIButton) {
        guard let exitButtonCompletion = exitButtonCompletion else { return }
        exitButtonCompletion()
        print("1")

    }
    
    @objc func deleteButtonTapped(sender: UIButton) {
        guard let  deleteButtonCompletion = deleteButtonCompletion else { return }
        deleteButtonCompletion()
        print("2")
    }
}
