//
//  SignUpConfigurator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 30.01.2025.
//


import Foundation
import UIKit

protocol SignUpConfiguratorProtocol {
    func configure(_ vc: SignUpDisplayLogic) -> SignUpDisplayLogic
}

final class SignUpConfigurator: SignUpConfiguratorProtocol {
    func configure(_ vc: SignUpDisplayLogic) -> SignUpDisplayLogic {
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
}


