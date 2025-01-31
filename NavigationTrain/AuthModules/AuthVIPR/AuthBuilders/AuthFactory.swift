//
//  AuthFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//


import UIKit

protocol AuthFactoryProtocol {
    var configurator: AuthConfiguratorProtocol { get set }

    func makeAuth() -> AuthDisplayLogic
}

final class AuthFactory: AuthFactoryProtocol {
    var configurator: AuthConfiguratorProtocol
    
    init(configurator: AuthConfiguratorProtocol) {
        self.configurator = configurator
    }

    func makeAuth() -> AuthDisplayLogic {
        let vc = AuthViewController()
        return configurator.configure(vc)
    }
}
