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
    private let factory: AuthFactoryProtocol = AuthFactory()
    
    // MARK:  Methods for cardinalCoordinator
    func showAuthScreen()-> AuthDisplayLogic {
        factory.createAuthScreen()
    }
    
    func showSignUpScreen()-> SignUpDisplayLogic {
        factory.createSignUpScreen()
    }
    
    func showLoggedPINScreen()-> LoggedPINDisplayLogic {
        factory.createLoggedPINScreen()
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
         factory.createPINCodeScreen()
    }
}
