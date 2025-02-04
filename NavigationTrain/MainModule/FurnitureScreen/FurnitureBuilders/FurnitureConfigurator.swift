//
//  FurnitureConfigurator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation
import UIKit

protocol FurnitureConfiguratorProtocol {
    func configure(_ vc: FurnitureDisplayLogic) -> FurnitureDisplayLogic
}

final class FurnitureConfigurator: FurnitureConfiguratorProtocol {
    func configure(_ vc: FurnitureDisplayLogic) -> FurnitureDisplayLogic {
     let interactor = FurnitureInteractor()
     let presenter = FurniturePresenter()
     let router = FurnitureRouter()
     presenter.viewController = vc
     interactor.presenter = presenter
     vc.interactor = interactor
     vc.router = router
     router.viewController = vc

     return vc
    }
}


