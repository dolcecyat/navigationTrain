//
//  BathroomFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import UIKit

protocol BathroomFactoryProtocol {
    var configurator: BathroomConfiguratorProtocol { get set }

    func makeBathroom() -> BathroomDisplayLogic
}

final class BathroomFactory: BathroomFactoryProtocol {
    var configurator: BathroomConfiguratorProtocol
    
    init(configurator: BathroomConfiguratorProtocol) {
        self.configurator = configurator
    }

    func makeBathroom() -> BathroomDisplayLogic {
        let vc =  BathroomViewController()
        return configurator.configure(vc)
    }
}
