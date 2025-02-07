//
//  FurnitureFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

class FurnitureFactory {
    
    func createFurnitureOneScreen()-> FurnitureOneDisplayLogic {
        let vc = FurnitureOneViewController()
        let interactor = FurnitureOneInteractor()
        let presenter = FurnitureOnePresenter()
        let router = FurnitureOneRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
    
    func createFurnitureTwoScreen()-> FurnitureTwoDisplayLogic {
        let vc = FurnitureTwoViewController()
        let interactor = FurnitureTwoInteractor()
        let presenter = FurnitureTwoPresenter()
        let router = FurnitureTwoRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
}
