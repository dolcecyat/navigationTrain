//
//  AuthFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation
import UIKit
protocol AuthFactoryProtocol {
    func createAuthScreen()-> AuthDisplayLogic
    func createSignUpScreen()-> SignUpDisplayLogic
    func createPINCodeScreen()-> PINCodeDisplayLogic
    func createLoggedPINScreen()-> LoggedPINDisplayLogic
}

class AuthFactory: AuthFactoryProtocol {
    func createAuthScreen() -> AuthDisplayLogic {
        let vc = AuthViewController()
        let interactor = AuthInteractor()
        let presenter = AuthPresenter()
        let router = AuthRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
    
    func createSignUpScreen() -> SignUpDisplayLogic {
        let vc = SignUpViewController()
        let interactor = SignUpInteractor()
        let presenter = SignUpPresenter()
        let router = SignUpRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
    
    func createPINCodeScreen() -> PINCodeDisplayLogic {
        let vc = PINCodeViewController()
        let interactor = PINCodeInteractor()
        let presenter = PINCodePresenter()
        let router = PINCodeRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
    
    func createLoggedPINScreen() -> LoggedPINDisplayLogic {
        let vc = LoggedPINViewController()
        let interactor = LoggedPINInteractor()
        let presenter = LoggedPINPresenter()
        let router = LoggedPINRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
    
    
}
