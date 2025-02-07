//
//  BathroomFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

class BathroomFactory {
    
    func createBathroomOneScreen()-> BathroomOneDisplayLogic {
        let vc = BathroomOneViewController()
        let interactor = BathroomOneInteractor()
        let presenter = BathroomOnePresenter()
        let router = BathroomOneRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
}
