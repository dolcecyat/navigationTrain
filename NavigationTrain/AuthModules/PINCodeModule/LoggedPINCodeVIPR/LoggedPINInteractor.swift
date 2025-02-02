//
//  LoggedPINInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 01.02.2025.
//


import Foundation

protocol LoggedPINBusinessLogic {
    func userEnteredCode(code: [Int])
   func exitButtonTapped()

}

class LoggedPINInteractor: LoggedPINBusinessLogic {
    var presenter: LoggedPINPresentationLogic?

    func userEnteredCode(code: [Int]) {
        switch UDStorageManager.shared.logInUserWithCode(code: code) {
        case true:
            presenter?.userLogged()
        case false:
            presenter?.userDidNotLogged()
        }
    }
    func exitButtonTapped() {
        UDStorageManager.shared.userLoggedOut()
    }
    
}

