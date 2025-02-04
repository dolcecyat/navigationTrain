//
//  PINCodeRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 31.01.2025.
//


import Foundation
import UIKit

protocol PINCodeRoutingLogic {
    func openMainScreen()
    func exitButtonTapped()

}

class PINCodeRouter: NSObject, PINCodeRoutingLogic {
    var parentCoordinator = AuthCoordinator.shared
    weak var viewController: UIViewController?
    
    func openMainScreen() {
        parentCoordinator.authCompleted()
    }
    func exitButtonTapped() {
        parentCoordinator.openAuthScreenAfterExit()
    }
}
