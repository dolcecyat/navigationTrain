//
//  FurnitureFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import UIKit

protocol FurnitureFactoryProtocol {
    var configurator:  FurnitureConfiguratorProtocol { get set }

    func makeFurniture() -> FurnitureDisplayLogic
}

final class FurnitureFactory: FurnitureFactoryProtocol {
    var configurator: FurnitureConfiguratorProtocol
    
    init(configurator: FurnitureConfiguratorProtocol) {
        self.configurator = configurator
    }

    func makeFurniture() -> FurnitureDisplayLogic {
        let vc =  FurnitureViewController()
        return configurator.configure(vc)
    }
}
