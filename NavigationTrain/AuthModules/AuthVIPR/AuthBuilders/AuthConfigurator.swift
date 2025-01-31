//
//  AuthConfigurator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//


import Foundation
import UIKit

protocol AuthConfiguratorProtocol {
    func configure(_ vc: AuthDisplayLogic) -> AuthDisplayLogic
}

final class AuthConfigurator: AuthConfiguratorProtocol {
    func configure(_ vc: AuthDisplayLogic) -> AuthDisplayLogic {
        let interactor = AuthInteractor()
        let presenter = AuthPresenter()
        let router = AuthRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        router.parentCoordinator = AuthCoordinator()
        
        return vc
    }
}
