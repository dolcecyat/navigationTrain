//
//  PINCodeConfigurator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 31.01.2025.
//


import Foundation
import UIKit

protocol PINCodeConfiguratorProtocol {
    func configure(_ vc: PINCodeDisplayLogic) -> PINCodeDisplayLogic
}

final class PINCodeConfigurator: PINCodeConfiguratorProtocol {
    func configure(_ vc: PINCodeDisplayLogic) -> PINCodeDisplayLogic {
     let interactor = PINCodeInteractor()
     let presenter = PINCodePresenter()
     let router = PINCodeRouter()
     presenter.viewController = vc
     interactor.presenter = presenter
     vc.interactor = interactor
     vc.router = router
     
     return vc
    }
}


