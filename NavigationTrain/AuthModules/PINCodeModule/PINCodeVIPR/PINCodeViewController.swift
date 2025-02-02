//
//  PINCodeViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 31.01.2025.
//


import UIKit
protocol FirstScreenProtocol: UIViewController {
    
}

protocol PINCodeDisplayLogic: UIViewController {
    var interactor: PINCodeBusinessLogic? { get set }
    var router: PINCodeRoutingLogic? { get set }
}

class PINCodeViewController: UIViewController, PINCodeDisplayLogic {
    var interactor: PINCodeBusinessLogic?
    var router: PINCodeRoutingLogic?
    
    lazy var numbersView = NumbersInputStack(exitButtonCompletion: handleExit, deleteButtonCompletion: handleDelete, generalCompletion: handleNumber)
    let enterCodeLabel = UILabel()
    let repeatCodeLabel = UILabel()
    let codeEnterCircleView = PinCodeCircles()
    let repeatCodeCircleView = PinCodeCircles()
    var enterCode: [Int] = []
    var repeatCode: [Int] = []
    var checkMode: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK: - Display Logic Functions
extension PINCodeViewController {
    
    // MARK: NumbersView methods
    @objc func handleExit() {
        print("exitvfrom view")
    }
    @objc func handleDelete() {
        if enterCode.isEmpty {
            return
        } else {
            enterCode.removeLast()
            codeEnterCircleView.emptyCircle(index: enterCode.count )
        }
        print("delete from view")
    }
    
    @objc func handleNumber(int: Int)-> Int {
        if enterCode.count == 4 {
            checkCodeHandler(int: int)
            return 0
        } else {
            enterCode.append(int)
            codeEnterCircleView.paintCircle(index: enterCode.count - 1)
            print("\(int) form View")
            if enterCode.count == 4 {
                checkMode(true)
            }
            return int
        }
    }
    
    func checkCodeHandler(int: Int) {
        if repeatCode.count == 4 {
        } else {
            repeatCode.append(int)
            repeatCodeCircleView.paintCircle(index: repeatCode.count - 1)
            if repeatCode.count == 4 {
                saveCode()
                router?.openMainScreen()
            }
        }
    }
    
    func saveCode() {
        if enterCode == repeatCode {
            interactor?.saveCodes(code: repeatCode)
        } else {
            showErrorAlert()
        }
    }
    private func checkMode(_ bool: Bool) {
        repeatCodeLabel.isHidden = !bool
        repeatCodeCircleView.isHidden = !bool
    }
    
    func showErrorAlert() {
        let alert = UIAlertController(title: "Ошибка входа", message: "Код не совпадает", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Изменить", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
        view.addSubview(codeEnterCircleView)
        view.addSubview(repeatCodeLabel)
        view.addSubview(repeatCodeCircleView)
    }
    
    func setConstraints() {
        numbersView.translatesAutoresizingMaskIntoConstraints = false
        enterCodeLabel.translatesAutoresizingMaskIntoConstraints = false
        codeEnterCircleView.translatesAutoresizingMaskIntoConstraints = false
        repeatCodeLabel.translatesAutoresizingMaskIntoConstraints = false
        repeatCodeCircleView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            enterCodeLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 170),
            enterCodeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            codeEnterCircleView.topAnchor.constraint(equalTo: enterCodeLabel.bottomAnchor, constant: 10),
            codeEnterCircleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            codeEnterCircleView.widthAnchor.constraint(equalToConstant: 120),
            codeEnterCircleView.heightAnchor.constraint(equalToConstant: 28),
            
            repeatCodeLabel.topAnchor.constraint(equalTo: codeEnterCircleView.bottomAnchor, constant: 30),
            repeatCodeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            repeatCodeCircleView.topAnchor.constraint(equalTo: repeatCodeLabel.bottomAnchor, constant: 10),
            repeatCodeCircleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            repeatCodeCircleView.widthAnchor.constraint(equalToConstant: 120),
            repeatCodeCircleView.heightAnchor.constraint(equalToConstant: 28),
            
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
        
        repeatCodeLabel.text = "Repeat the access code"
        repeatCodeLabel.font = UIFont.systemFont(ofSize: 18)
        repeatCodeLabel.textColor = .black
        checkMode(checkMode)
    }
}
