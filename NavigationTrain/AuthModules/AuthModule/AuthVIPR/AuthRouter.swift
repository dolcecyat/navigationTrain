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
    var parentCoordinator: AuthCoordinatorProtocol?
    weak var viewController: UIViewController?

    
    func signUpButtonPressed() {
        guard let vcToOpen = parentCoordinator?.openSignUpScreen() else {return}
        viewController?.navigationController?.pushViewController( vcToOpen, animated: true)
    }
    
    func openNextScreen() {
        print("opening next screen")

    }
}
