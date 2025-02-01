//
//  AuthInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//


import Foundation

protocol AuthBusinessLogic {
    func logInButtonPressed(login: String ,password: String)
    func checkIfUserLogged()
}

class AuthInteractor: AuthBusinessLogic {
    var presenter: AuthPresentationLogic?
    var userInfo: UserInfo?
    
    init(){
        FirebaseAuthManager.shared.setLogInDelegate(self)
    }

    func logInButtonPressed(login: String ,password: String) {
        userInfo = UserInfo(password: password, login: login)
        FirebaseAuthManager.shared.logIn(login: login, password: password)
    }
    func checkIfUserLogged() {
        if UDStorageManager.shared.checkIfUserLogged() == true {
            presenter?.userLoggedIn(success: true)
        }
    }
}

extension AuthInteractor: AuthLogInDelegate {
    
    func userLoggedIn(success: Bool) {
        guard let pass = userInfo?.password, let login = userInfo?.login else { return }
        if success == true {
            UDStorageManager.shared.saveUserInfo(login: login, password: pass)
        }
        presenter?.userLoggedIn(success: success)
    }
}

