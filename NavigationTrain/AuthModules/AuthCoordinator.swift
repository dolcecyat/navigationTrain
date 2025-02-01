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
}
class AuthCoordinator {
    let  parentCoordinator = CardinalCoordinator.shared
    
    // MARK: AuthScreen opening
    func showAuthScreen()-> AuthDisplayLogic {
        let factory = AuthFactory(configurator: AuthConfigurator())
        let vc = factory.makeAuth()
        return vc
    }
    // MARK: signUpScreen opening
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
    // MARK: PinScreen opnening
    
    func openPinScreen()-> UIViewController {
        let factory = PINCodeFactory(configurator: PINCodeConfigurator())
        let vc = factory.makePINCode()
        return vc
    }
}
