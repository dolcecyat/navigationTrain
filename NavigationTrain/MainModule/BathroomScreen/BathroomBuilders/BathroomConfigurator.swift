//
//  BathroomConfigurator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//



import Foundation
import UIKit

protocol BathroomConfiguratorProtocol {
    func configure(_ vc: BathroomDisplayLogic) -> BathroomDisplayLogic
}

final class BathroomConfigurator: BathroomConfiguratorProtocol {
    func configure(_ vc: BathroomDisplayLogic) -> BathroomDisplayLogic {
     let interactor = BathroomInteractor()
     let presenter = BathroomPresenter()
     let router = BathroomRouter()
     presenter.viewController = vc
     interactor.presenter = presenter
     vc.interactor = interactor
     vc.router = router
     router.viewController = vc

     return vc
    }
}


