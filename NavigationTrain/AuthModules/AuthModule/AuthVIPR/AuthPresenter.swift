//
//  AuthPresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//


import Foundation

protocol AuthPresentationLogic: AnyObject {
    func userLoggedIn(success: Bool)
}

class AuthPresenter: AuthPresentationLogic {
    weak var viewController: AuthDisplayLogic?
    
    func userLoggedIn(success: Bool) {
        switch success {
        case true:
            viewController?.userDidLogged()
        case false:
            viewController?.userDidNotLogged()
        }
    }
}


