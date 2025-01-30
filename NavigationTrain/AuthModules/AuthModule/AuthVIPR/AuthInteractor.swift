//
//  AuthInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//


import Foundation

protocol AuthBusinessLogic {
    func logInButtonPressed(login: String ,password: String)
}

class AuthInteractor: AuthBusinessLogic {
    var presenter: AuthPresentationLogic?
    init(){
        FirebaseAuthManager.shared.setLogInDelegate(self)
    }

    func logInButtonPressed(login: String ,password: String) {
        FirebaseAuthManager.shared.logIn(login: login, password: password)
    }
}

extension AuthInteractor: AuthLogInDelegate {
    func userLoggedIn(success: Bool) {
        presenter?.userLoggedIn(success: success)
    }
    
    func userWasLogged(success: Bool) {
        
    }
    
    
}

