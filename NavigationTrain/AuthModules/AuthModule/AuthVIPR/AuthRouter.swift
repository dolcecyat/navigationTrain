//
//  AuthRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//


import Foundation
import UIKit

protocol AuthRoutingLogic {
    func signUpButtonPressed()
    func openNextScreen()
}

class AuthRouter: NSObject, AuthRoutingLogic {
    var parentCoordinator = AuthCoordinator.shared
    weak var viewController: UIViewController?
    
    
    func signUpButtonPressed() {
        let vcToOpen = parentCoordinator.openSignUpScreen()
        viewController?.navigationController?.pushViewController( vcToOpen, animated: true)
    }
    
    func openNextScreen() {
        let vcToOpen = parentCoordinator.openPinScreen()
        viewController?.navigationController?.pushViewController( vcToOpen, animated: true)
    }
}
