//
//  FlowersFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import UIKit

protocol  FlowersFactoryProtocol {
    var configurator:  FlowersConfiguratorProtocol { get set }

    func makeFlowers() -> FlowersDisplayLogic
}

final class  FlowersFactory:  FlowersFactoryProtocol {
    var configurator:  FlowersConfiguratorProtocol
    
    init(configurator:  FlowersConfiguratorProtocol) {
        self.configurator = configurator
    }

    func makeFlowers() ->  FlowersDisplayLogic {
        let vc =  FlowersViewController()
        return configurator.configure(vc)
    }
}
