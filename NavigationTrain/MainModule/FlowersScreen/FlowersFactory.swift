//
//  FlowersFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

class FlowersFactory {
    
    func createFlowersOneScreen()-> FlowersOneDisplayLogic {
        let vc = FlowersOneViewController()
        let interactor = FlowersOneInteractor()
        let presenter = FlowersOnePresenter()
        let router = FlowersOneRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
}
