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
      
    func signUpButtonPressed(login: String, password: String) {
        firebase.setSignUpDelegate(self)
        firebase.signUp(login: login, password: password)
    }
    
    func signUp(success: Bool) {
        presenter?.userSignedUp(success: success)
    }
}

