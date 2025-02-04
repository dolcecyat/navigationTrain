//
//  MainConfigurator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 03.02.2025.
//


import Foundation
import UIKit

protocol MainConfiguratorProtocol {
    func configure(_ vc: MainDisplayLogic) -> MainDisplayLogic
}

final class MainConfigurator: MainConfiguratorProtocol {
    func configure(_ vc: MainDisplayLogic) -> MainDisplayLogic {
     let interactor = MainInteractor()
     let presenter = MainPresenter()
     let router = MainRouter()
     presenter.viewController = vc
     interactor.presenter = presenter
     vc.interactor = interactor
     vc.router = router
     router.viewController = vc
     return vc
    }
}


