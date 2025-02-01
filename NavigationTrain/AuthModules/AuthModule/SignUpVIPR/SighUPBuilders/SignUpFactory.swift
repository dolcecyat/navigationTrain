//
//  SignUpFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 30.01.2025.
//


import UIKit

protocol SignUpFactoryProtocol {
    var configurator: SignUpConfiguratorProtocol { get set }

    func makeSignUp() -> SignUpDisplayLogic
}

final class SignUpFactory: SignUpFactoryProtocol {
    var configurator: SignUpConfiguratorProtocol
    
    init(configurator: SignUpConfiguratorProtocol) {
        self.configurator = configurator
    }

    func makeSignUp() -> SignUpDisplayLogic {
        let vc = SignUpViewController()
        return configurator.configure(vc)
    }
}
