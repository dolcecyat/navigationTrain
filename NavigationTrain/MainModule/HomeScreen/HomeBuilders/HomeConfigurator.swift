//
//  HomeConfigurator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//



import Foundation
import UIKit

protocol HomeConfiguratorProtocol {
    func configure(_ vc: HomeDisplayLogic) -> HomeDisplayLogic
}

final class HomeConfigurator: HomeConfiguratorProtocol {
    func configure(_ vc: HomeDisplayLogic) -> HomeDisplayLogic {
     let interactor = HomeInteractor()
     let presenter = HomePresenter()
     let router = HomeRouter()
     presenter.viewController = vc
     interactor.presenter = presenter
     vc.interactor = interactor
     vc.router = router
     router.viewController = vc

     return vc
    }
}


