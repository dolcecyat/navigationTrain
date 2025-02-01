//
//  LoggedPINConfigurator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 01.02.2025.
//


import Foundation
import UIKit

protocol LoggedPINConfiguratorProtocol {
    func configure(_ vc: LoggedPINDisplayLogic) -> LoggedPINDisplayLogic
}

final class LoggedPINConfigurator: LoggedPINConfiguratorProtocol {
    func configure(_ vc: LoggedPINDisplayLogic) -> LoggedPINDisplayLogic {
     let interactor = LoggedPINInteractor()
     let presenter = LoggedPINPresenter()
     let router = LoggedPINRouter()
     presenter.viewController = vc
     interactor.presenter = presenter
     vc.interactor = interactor
     vc.router = router
     
     return vc
    }
}


