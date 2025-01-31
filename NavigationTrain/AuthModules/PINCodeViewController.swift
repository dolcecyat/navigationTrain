//
//  PINCodeViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 31.01.2025.
//


import UIKit

protocol PINCodeDisplayLogic: UIViewController {
    var interactor: PINCodeBusinessLogic? { get set }
    var router: PINCodeRoutingLogic? { get set }
}

class PINCodeViewController: UIViewController, PINCodeDisplayLogic {
    var interactor: PINCodeBusinessLogic?
    var router: PINCodeRoutingLogic?
    
    lazy var numbersView = NumbersInputStack(exitButtonCompletion: handleExit, deleteButtonCompletion: handleDelete, generalCompletion: handleNumber)
    let enterCodeLabel = UILabel()
    let codeCircleView = PinCodeCircles()
    var code: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK: - Display Logic Functions
extension PINCodeViewController {
  @objc func handleExit() {
        print("exitvfrom view")
    }
    @objc func handleDelete() {
        if code.isEmpty {
            return
        } else {
            code.removeLast()
            codeCircleView.emptyCircle(index: code.count )
        }
        print("delete from view")
    }
    
    @objc func handleNumber(int: Int)-> Int {
        if code.count == 4 {
            return 0
        }else {
            code.append(int)
            codeCircleView.paintCircle(index: code.count - 1)
            print("\(int) form View")
            return int
        }
    }
}

// MARK: - Set UI Functions
extension PINCodeViewController {
    private func setup() {
        addViews()
        setConstraints()
        setUI()
    }
    
    func addViews() {
        view.addSubview(numbersView)
        view.addSubview(enterCodeLabel)
        view.addSubview(codeCircleView)
    
    }
    
    func setConstraints() {
        numbersView.translatesAutoresizingMaskIntoConstraints = false
        enterCodeLabel.translatesAutoresizingMaskIntoConstraints = false
        codeCircleView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            enterCodeLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 120),
            enterCodeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            codeCircleView.topAnchor.constraint(equalTo: enterCodeLabel.bottomAnchor, constant: 10),
            codeCircleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            codeCircleView.widthAnchor.constraint(equalToConstant: 120),
            codeCircleView.heightAnchor.constraint(equalToConstant: 28),
            
            numbersView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: 10),
            numbersView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            numbersView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            numbersView.heightAnchor.constraint(equalToConstant: 350),
        ])
    }
    
    func setUI() {
        view.backgroundColor = .white
        enterCodeLabel.text = "Set the access code"
        enterCodeLabel.font = UIFont.systemFont(ofSize: 18)
        enterCodeLabel.textColor = .black
    }
}
