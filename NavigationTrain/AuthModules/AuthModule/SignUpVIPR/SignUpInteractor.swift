//
//  SignUpInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 30.01.2025.
//


import Foundation

protocol SignUpBusinessLogic {
    func signUpButtonPressed(login: String, password: String)
}

class SignUpInteractor: SignUpBusinessLogic, SignUpDelegate {
  
    var presenter: SignUpPresentationLogic?
    let firebase = FirebaseAuthManager.shared
    var userInfo: UserInfo?
    
    init() {
        firebase.setSignUpDelegate(self)
    }
      
    func signUpButtonPressed(login: String, password: String) {
        if isPasswordValid(password) == true && isLoginValid(login) {
            userInfo = UserInfo(password: password, login: login)
            firebase.signUp(login: login, password: password)
        }
    }
    
    func isLoginValid(_ login: String) -> Bool {
        return login.contains("@")
      
    }
    
       func isPasswordValid(_ password: String) -> Bool {
           // Минимальная длина пароля
           let minLength = 8
           
           // Регулярные выражения для проверки критериев
           let hasUpperCase = NSPredicate(format: "SELF MATCHES %@", ".*[A-Z]+.*")
           let hasLowerCase = NSPredicate(format: "SELF MATCHES %@", ".*[a-z]+.*")
           let hasDigit = NSPredicate(format: "SELF MATCHES %@", ".*[0-9]+.*")
           
           // Проверка всех условий
           let isLengthValid = password.count >= minLength
           let isUpperCaseValid = hasUpperCase.evaluate(with: password)
           let isLowerCaseValid = hasLowerCase.evaluate(with: password)
           let isDigitValid = hasDigit.evaluate(with: password)
           
           // Пароль валиден, если все условия выполнены
           return isLengthValid && isUpperCaseValid && isLowerCaseValid && isDigitValid
       }

    
    func signUp(success: Bool) {
        if success == true {
            guard let pass = userInfo?.password, let login = userInfo?.login else { return }
            UDStorageManager.shared.saveUserInfo(login: login, password: pass)
        }
        presenter?.userSignedUp(success: success)
    }
}

