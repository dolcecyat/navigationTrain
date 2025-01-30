//
//  FirebaseAuthManager.swift
//  NavigationTrain
//
//  Created by Алина Класс on 29.01.2025.
//

import Foundation
import FirebaseAuth

protocol AuthLogInDelegate: AnyObject {
    func userLoggedIn(success: Bool)
    func userWasLogged(success: Bool)
}

protocol SignUpDelegate: AnyObject {
    func signUp(success: Bool)
}
class FirebaseAuthManager {
    
    static let shared = FirebaseAuthManager()
    private var loginDelegate: AuthLogInDelegate?
    private var signUpDelegate: SignUpDelegate?
    
    func setLogInDelegate(_ delegate: AuthLogInDelegate?) {
        self.loginDelegate = delegate
    }
    
    func setSignUpDelegate(_ delegate: SignUpDelegate?) {
        self.signUpDelegate = delegate
    }
    
    func logIn(login: String, password: String) {
        Auth.auth().signIn(withEmail: login, password: password) { [weak self] authResult, error in
            if authResult?.user != nil {
                self?.loginDelegate?.userLoggedIn(success: true) // Уведомляем делегата
            } else {
                self?.loginDelegate?.userLoggedIn(success: false) // Сообщаем об ошибке
            }
        }
    }
    
    func signUp(login: String, password: String) {
        Auth.auth().createUser(withEmail: login, password: password) { [weak self] authResult, error in
            if authResult?.user != nil {
                self?.signUpDelegate?.signUp(success: true)
            } else {
                self?.signUpDelegate?.signUp(success: false)
            }
        }
    }
    func checkIfUserLogged(login: String, password: String)  {
    
        Auth.auth().signIn(withEmail: login, password: password) { [weak self] authResult, error in
            if authResult?.user != nil {
                self?.loginDelegate?.userWasLogged(success: true) // Уведомляем делегата
            } else {
                self?.loginDelegate?.userWasLogged(success: false) // Сообщаем об ошибке
            }
        }
    }
}
