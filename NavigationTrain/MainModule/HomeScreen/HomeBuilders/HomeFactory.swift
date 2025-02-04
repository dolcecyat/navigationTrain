//
//  HomeFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import UIKit

protocol  HomeFactoryProtocol {
    var configurator:  HomeConfiguratorProtocol { get set }

    func makeHome() -> HomeDisplayLogic
}

final class HomeFactory: HomeFactoryProtocol {
    var configurator:  HomeConfiguratorProtocol
    
    init(configurator:  HomeConfiguratorProtocol) {
        self.configurator = configurator
    }

    func makeHome() ->  HomeDisplayLogic {
        let vc =  HomeViewController()
        return configurator.configure(vc)
    }
}
