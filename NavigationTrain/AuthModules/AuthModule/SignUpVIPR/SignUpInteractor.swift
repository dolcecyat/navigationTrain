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
        userInfo = UserInfo(password: password, login: login)
        firebase.signUp(login: login, password: password)
    }
    
    func signUp(success: Bool) {
        if success == true {
            guard let pass = userInfo?.password, let login = userInfo?.login else { return }
            UDStorageManager.shared.saveUserInfo(login: login, password: pass)
        }
        presenter?.userSignedUp(success: success)
    }
}

