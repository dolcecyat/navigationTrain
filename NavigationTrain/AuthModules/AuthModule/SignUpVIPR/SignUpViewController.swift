//
//  SignUpViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 30.01.2025.
//


import UIKit

protocol SignUpDisplayLogic: UIViewController {
    var interactor: SignUpBusinessLogic? { get set }
    var router: SignUpRoutingLogic? { get set }
    func userDidSignedUp()
    func signUpFailed()
}

class SignUpViewController: UIViewController, SignUpDisplayLogic {
    var interactor: SignUpBusinessLogic?
    var router: SignUpRoutingLogic?
    
    let signUpLabel = UILabel()
    let logInTextField = LogInPasswordTextField(withText: "Login")
    let passwordTextField = LogInPasswordTextField(withText: "Password")
    let signUpButton = AuthButton(withText: "Sign Up")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setup()
    }
}

// MARK: - Display Logic Functions
extension SignUpViewController {
    
    func userDidSignedUp() {
        router?.userDidSignedUp()
    }
    
    func signUpFailed() {
        showErrorAlert(message: "Аккаунт с такими данными уже существует")
    }
}

// MARK: - Set UI Functions
extension SignUpViewController {
    private func setup() {
        addViews()
        setDelegates()
        setConstraints()
        setUI()
        setUpActions()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        passwordTextField.resignFirstResponder()
        logInTextField.resignFirstResponder()
    }
    
    private func addViews() {
        self.view.addSubview(signUpLabel)
        self.view.addSubview(logInTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(signUpButton)
    }
    
    private func setConstraints() {
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        logInTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signUpLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            logInTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logInTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            logInTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            logInTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: logInTextField.bottomAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            signUpButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            signUpButton.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
    
    private func setUI() {
        view.backgroundColor = .white
        signUpLabel.text = "Sign Up"
        signUpLabel.font = .systemFont(ofSize: 40, weight: .bold)
        signUpLabel.textColor = .black
    }
    
    // MARK: Set methods
    private func setDelegates() {
        logInTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    private func setUpActions() {
        signUpButton.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside)
    }
    
    // MARK: SignUpMethod
    @objc private func signUpButtonPressed() {
        guard let logIn = logInTextField.text, let password = passwordTextField.text else {
            self.showErrorAlert(message: "Введите данные")
            return
        }
        interactor?.signUpButtonPressed(login: logIn, password: password)
    }
    
    // MARK: Errors Handler methods
    private func clearTextFields() {
        logInTextField.text = ""
        passwordTextField.text = ""
    }
    
    func showErrorAlert(message: String) {
        let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Попробовать ещё раз", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        clearTextFields()
    }
}
// MARK: UITextFieldDelegate
extension SignUpViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
