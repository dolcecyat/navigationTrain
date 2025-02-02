//
//  LoggedPINRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 01.02.2025.
//


import Foundation
import UIKit

protocol LoggedPINRoutingLogic {
   func openMainScreen()
    func exitButtonTapped()

}

class LoggedPINRouter: NSObject, LoggedPINRoutingLogic {
    let coordinator = AuthCoordinator.shared
        weak var viewController: UIViewController?
    
    func openMainScreen() {
        print("открываю главный экран")
    }
    
    func exitButtonTapped() {
        coordinator.openAuthScreenAfterExit()
    }

}
