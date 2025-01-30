//
//  AuthCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//

import Foundation
import UIKit

protocol AuthCoordinatorProtocol: AnyObject {
    func openSignUpScreen()-> UIViewController
}
class AuthCoordinator: AuthCoordinatorProtocol {
//    let  parentCoordinator: CardinalCoordinatorProtocol?
//    
//    init(parentCoordinator: CardinalCoordinatorProtocol?) {
//        self.parentCoordinator = parentCoordinator
//    }
//    
    func showAuthScreen()-> AuthDisplayLogic {
        let factory = AuthFactory(configurator: AuthConfigurator())
        let vc = factory.makeAuth()
        return vc
    }
    
    func openSignUpScreen()-> UIViewController {
        return self.showSignUpScreen()
    }
    
    func showSignUpScreen()-> SignUpDisplayLogic {
        let factory = SignUpFactory(configurator: SignUpConfigurator())
        let vc = factory.makeSignUp()
        return vc
    }
}
