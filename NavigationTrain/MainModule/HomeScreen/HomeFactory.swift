//
//  HomeFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation
protocol HomeFactoryProtocol {
    func makeDetailsOne() ->  DetailsOneDisplayLogic
    func makeDetailsTwo() ->  DetailsTwoDisplayLogic
    
    func makeContactsOne() ->  ContactsOneDisplayLogic
    func makeContactsTwo() ->  ContactsTwoDisplayLogic
}

class HomeFactory: HomeFactoryProtocol {
    
    func makeDetailsOne() ->  DetailsOneDisplayLogic {
        let vc =  DetailsOneViewController()
        let interactor = DetailsOneInteractor()
        let presenter = DetailsOnePresenter()
        let router = DetailsOneRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
    
    func makeDetailsTwo() ->  DetailsTwoDisplayLogic {
        let vc =  DetailsTwoViewController()
        let interactor = DetailsTwoInteractor()
        let presenter = DetailsTwoPresenter()
        let router = DetailsTwoRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
    
    func makeContactsOne() ->  ContactsOneDisplayLogic {
        let vc =  ContactsOneViewController()
        let interactor = ContactsOneInteractor()
        let presenter = ContactsOnePresenter()
        let router = ContactsOneRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
    
    func makeContactsTwo() ->  ContactsTwoDisplayLogic {
        let vc =  ContactsTwoViewController()
        let interactor = ContactsTwoInteractor()
        let presenter = ContactsTwoPresenter()
        let router = ContactsTwoRouter()
        presenter.viewController = vc
        interactor.presenter = presenter
        vc.interactor = interactor
        vc.router = router
        router.viewController = vc
        return vc
    }
}
