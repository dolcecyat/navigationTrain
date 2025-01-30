//
//  AuthViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//


import UIKit

protocol AuthDisplayLogic: UIViewController {
    var interactor: AuthBusinessLogic? { get set }
    var router: AuthRoutingLogic? { get set }
    func userDidLogged()
    func userDidNotLogged()
}

class AuthViewController: UIViewController {
    
    var interactor: AuthBusinessLogic?
    var router: AuthRoutingLogic?
    
// MARK: UI Properties
    let loginLabel = UILabel()
    let logInTextField = LogInPasswordTextField(withText: "Login")
    let passwordTextField = LogInPasswordTextField(withText: "Password")
    let loginButton = AuthButton(withText: "Log In")
    let signUpButton = AuthButton(withText: "Sign Up")

// MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK: - Display Logic Functions
extension AuthViewController: AuthDisplayLogic {
    
    func userDidLogged() {
        router?.openNextScreen()
    }
    
    func userDidNotLogged() {
        let alert = UIAlertController(title: "Ошибка входа", message: "Некорректные данные", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Изменить", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

// MARK: - Set UI Functions
extension AuthViewController {
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
    
    private func setDelegates() {
        logInTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    private func addViews() {
        self.view.addSubview(loginLabel)
        self.view.addSubview(logInTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(loginButton)
        self.view.addSubview(signUpButton)
    }
    private func setConstraints() {
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        logInTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            logInTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logInTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            logInTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            logInTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: logInTextField.bottomAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            signUpButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            signUpButton.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
    private func setUI() {
        view.backgroundColor = .white
        loginLabel.text = "Login"
        loginLabel.font = .systemFont(ofSize: 40, weight: .bold)
        loginLabel.textColor = .black
    }
    private func setUpActions() {
        loginButton.addTarget(self, action: #selector(logInButtonPressed), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside)
    }
    
    private func clearTextFields() {
        logInTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: Interactor interactions

extension AuthViewController {
    
    @objc private func logInButtonPressed() {
        guard let login = logInTextField.text, let password = passwordTextField.text else { return }
        interactor?.logInButtonPressed(login: login ,password: password)
    }
    
    @objc private func signUpButtonPressed() {
        router?.signUpButtonPressed()
    }
}

// MARK: Text Field Delegate
extension AuthViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
