//
//  MainFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 03.02.2025.
//


import UIKit

protocol MainFactoryProtocol {
    var configurator: MainConfiguratorProtocol { get set }

    func makeMain() -> MainDisplayLogic
}

final class MainFactory: MainFactoryProtocol {
    var configurator: MainConfiguratorProtocol
    
    init(configurator: MainConfiguratorProtocol) {
        self.configurator = configurator
    }

    func makeMain() -> MainDisplayLogic {
        let vc = MainViewController()
        return configurator.configure(vc)
    }
}
