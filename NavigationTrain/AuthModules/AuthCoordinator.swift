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
    func openPinScreen()-> UIViewController
    func openAuthScreenAfterExit()
}
class AuthCoordinator {
    static let shared = AuthCoordinator()
    private let parentCoordinator = CardinalCoordinator.shared
    
    // MARK:  Methods for cardinalCoordinator
    func showAuthScreen()-> AuthDisplayLogic {
        let factory = AuthFactory(configurator: AuthConfigurator())
        let vc = factory.makeAuth()
        return vc
    }
    
    func showSignUpScreen()-> SignUpDisplayLogic {
        let factory = SignUpFactory(configurator: SignUpConfigurator())
        let vc = factory.makeSignUp()
        return vc
    }
    
    func showLoggedPINScreen()-> LoggedPINDisplayLogic {
        let factory = LoggedPINFactory(configurator: LoggedPINConfigurator())
        let vc = factory.makeLoggedPIN()
        return vc
    }
}
extension AuthCoordinator: AuthCoordinatorProtocol {
    
    func openSignUpScreen()-> UIViewController {
        return self.showSignUpScreen()
    }
    
    func openAuthScreenAfterExit() {
        parentCoordinator.openAuthAfterExit()
    }
    
    func authCompleted() {
        parentCoordinator.openMainAfterAuth()
    }
    
    func openPinScreen()-> UIViewController {
        let factory = PINCodeFactory(configurator: PINCodeConfigurator())
        let vc = factory.makePINCode()
        return vc
    }
}
