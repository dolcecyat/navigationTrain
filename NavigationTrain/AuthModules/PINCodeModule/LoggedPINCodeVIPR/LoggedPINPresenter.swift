//
//  LoggedPINPresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 01.02.2025.
//


import Foundation

protocol LoggedPINPresentationLogic: AnyObject {
    func userLogged()
    func userDidNotLogged()
}

class LoggedPINPresenter: LoggedPINPresentationLogic {
    weak var viewController: LoggedPINDisplayLogic?
    
    func userLogged() {
        viewController?.userLogged()
    }

    func userDidNotLogged() {
        viewController?.showErrorAlert()
    }
}


