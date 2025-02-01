//
//  LoggedPINViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 01.02.2025.
//


import UIKit

protocol LoggedPINDisplayLogic: UIViewController,FirstScreenProtocol {
    var interactor: LoggedPINBusinessLogic? { get set }
    var router: LoggedPINRoutingLogic? { get set }
    func showErrorAlert()
    func userLogged()
}

class LoggedPINViewController: UIViewController, LoggedPINDisplayLogic {
    var interactor: LoggedPINBusinessLogic?
    var router: LoggedPINRoutingLogic?
    
    lazy var numbersView = NumbersInputStack(exitButtonCompletion: handleExit, deleteButtonCompletion: handleDelete, generalCompletion: handleNumber)
    let enterCodeLabel = UILabel()
    let codeEnterCircleView = PinCodeCircles()
    var enterCode: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK: - Display Logic Functions
extension LoggedPINViewController {
    @objc func handleExit() {
        print("exit from view")
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
            return 0
        } else {
            enterCode.append(int)
            codeEnterCircleView.paintCircle(index: enterCode.count - 1)
            print("\(int) form View")
            if enterCode.count == 4 {
                interactor?.userEnteredCode(code: enterCode)
            }
            return int
        }
    }
    
    func userLogged() {
        router?.openMainScreen()
    }
    
    func showErrorAlert() {
        let alert = UIAlertController(title: "Ошибка входа", message: "Неправильный код доступа", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Изменить", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

// MARK: - Set UI Functions
extension LoggedPINViewController {
    private func setup() {
        addViews()
        setConstraints()
        setUI()
    }
    
    func addViews() {
        view.addSubview(numbersView)
        view.addSubview(enterCodeLabel)
        view.addSubview(codeEnterCircleView)
    
    }
    
    func setConstraints() {
        numbersView.translatesAutoresizingMaskIntoConstraints = false
        enterCodeLabel.translatesAutoresizingMaskIntoConstraints = false
        codeEnterCircleView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            enterCodeLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 170),
            enterCodeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            codeEnterCircleView.topAnchor.constraint(equalTo: enterCodeLabel.bottomAnchor, constant: 10),
            codeEnterCircleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            codeEnterCircleView.widthAnchor.constraint(equalToConstant: 120),
            codeEnterCircleView.heightAnchor.constraint(equalToConstant: 28),
            
            numbersView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: 10),
            numbersView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            numbersView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            numbersView.heightAnchor.constraint(equalToConstant: 350),
        ])
    }
    
    func setUI() {
        view.backgroundColor = .white
        enterCodeLabel.text = "Enter the access code"
        enterCodeLabel.font = UIFont.systemFont(ofSize: 18)
        enterCodeLabel.textColor = .black
        
    }
}
