//
//  LoggedPINFactory.swift
//  NavigationTrain
//
//  Created by Алина Класс on 01.02.2025.
//


import UIKit

protocol LoggedPINFactoryProtocol {
    var configurator: LoggedPINConfiguratorProtocol { get set }

    func makeLoggedPIN() -> LoggedPINDisplayLogic
}

final class LoggedPINFactory: LoggedPINFactoryProtocol {
    var configurator: LoggedPINConfiguratorProtocol
    
    init(configurator: LoggedPINConfiguratorProtocol) {
        self.configurator = configurator
    }

    func makeLoggedPIN() -> LoggedPINDisplayLogic {
        let vc = LoggedPINViewController()
        return configurator.configure(vc)
    }
}
