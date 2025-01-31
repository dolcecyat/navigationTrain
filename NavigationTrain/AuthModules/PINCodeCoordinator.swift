//
//  PINCodeCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 31.01.2025.
//


import Foundation
import UIKit

class PINCodeCoordinator {
    var parentCoordinator: AuthCoordinatorProtocol?
    let factory = PINCodeFactory(configurator: PINCodeConfigurator())
    
    func showPINCodeScreen()-> PINCodeDisplayLogic {
        let vc = factory.makePINCode()
        return vc
    }
}
