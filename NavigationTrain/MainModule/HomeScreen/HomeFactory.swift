//
//  HomeFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

class HomeFactory {
    
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
