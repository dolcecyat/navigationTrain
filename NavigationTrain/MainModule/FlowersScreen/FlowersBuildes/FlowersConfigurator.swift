//
//  FlowersConfigurator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//



import Foundation
import UIKit

protocol FlowersConfiguratorProtocol {
    func configure(_ vc: FlowersDisplayLogic) -> FlowersDisplayLogic
}

final class FlowersConfigurator: FlowersConfiguratorProtocol {
    func configure(_ vc: FlowersDisplayLogic) -> FlowersDisplayLogic {
     let interactor = FlowersInteractor()
     let presenter = FlowersPresenter()
     let router = FlowersRouter()
     presenter.viewController = vc
     interactor.presenter = presenter
     vc.interactor = interactor
     vc.router = router
     router.viewController = vc

     return vc
    }
}


