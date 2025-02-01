//
//  SignUpPresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 30.01.2025.
//


import Foundation

protocol SignUpPresentationLogic: AnyObject {
    func userSignedUp(success: Bool)
}

class SignUpPresenter: SignUpPresentationLogic {
    weak var viewController: SignUpDisplayLogic?

    func userSignedUp(success: Bool) {
        switch success {
            case true:
            viewController?.userDidSignedUp()
        case false:
            viewController?.signUpFailed()
        }
    }
}


