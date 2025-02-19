//
//  MainFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation
import UIKit

protocol MainFactoryProtocol {

    func createMainScreen() -> MainDisplayLogic
    func createFlowersScreen() -> FlowersDisplayLogic
    func createBathroomScreen() -> BathroomDisplayLogic
    func createFurnitureScreen() -> FurnitureDisplayLogic
    func createHomeScreen() -> HomeDisplayLogic
}

final class MainFactory: MainFactoryProtocol {

    func createMainScreen() -> MainDisplayLogic {
        let vc = MainViewController()
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
    
    func createFlowersScreen() -> any FlowersDisplayLogic {
        let vc = FlowersViewController()
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
    
    func createBathroomScreen() -> any BathroomDisplayLogic {
        let vc = BathroomViewController()
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
    
    func createFurnitureScreen() -> any FurnitureDisplayLogic {
        let vc = FurnitureViewController()
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
    
    func createHomeScreen() -> any HomeDisplayLogic {
        let vc = HomeViewController()
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
