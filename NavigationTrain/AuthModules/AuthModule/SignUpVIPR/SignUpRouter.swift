//
//  SignUpRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 30.01.2025.
//


import Foundation
import UIKit

protocol SignUpRoutingLogic {
    func userDidSignedUp()
}

class SignUpRouter: NSObject, SignUpRoutingLogic {
    var coordinator: AuthCoordinatorProtocol?
    weak var viewController: UIViewController?
    
    func userDidSignedUp() {
        viewController?.navigationController?.popViewController(animated: true)
    }
}
