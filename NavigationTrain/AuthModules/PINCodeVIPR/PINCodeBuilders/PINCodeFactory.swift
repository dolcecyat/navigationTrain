//
//  PINCodeFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 31.01.2025.
//


import UIKit

protocol PINCodeFactoryProtocol {
    var configurator: PINCodeConfiguratorProtocol { get set }

    func makePINCode() -> PINCodeDisplayLogic
}

final class PINCodeFactory: PINCodeFactoryProtocol {
    var configurator: PINCodeConfiguratorProtocol
    
    init(configurator: PINCodeConfiguratorProtocol) {
        self.configurator = configurator
    }

    func makePINCode() -> PINCodeDisplayLogic {
        let vc = PINCodeViewController()
        return configurator.configure(vc)
    }
}
