//
//  SignUpRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 30.01.2025.
//


import Foundation
import UIKit

protocol SignUpRoutingLogic {
    func showPinScreen()
}

class SignUpRouter: NSObject, SignUpRoutingLogic {
    var parentCoordinator: AuthCoordinatorProtocol?
    weak var viewController: UIViewController?
    
    func showPinScreen() {
        viewController?.navigationController?.popViewController(animated: true)
    }
}
