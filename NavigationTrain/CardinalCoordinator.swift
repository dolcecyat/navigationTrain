//
//  CardinalCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//

import Foundation
import UIKit

enum StartingDirections {
   case PIN
   case Auth
}

protocol CardinalCoordinatorProtocol: AnyObject {
    func start() -> UINavigationController
}

class CardinalCoordinator {
    static let shared = CardinalCoordinator()
    var navigationController: UINavigationController?
    var startIn: StartingDirections {
        let logged = UDStorageManager.shared.checkIfUserLogged()
        switch logged {
        case true:
            return .PIN
        case false:
            return .Auth
        }
    }
}

extension CardinalCoordinator: CardinalCoordinatorProtocol {
    
    func start()-> UINavigationController {
        var navCont = UINavigationController()
        
        switch startIn {
        case .PIN:
            let childCoordinator = AuthCoordinator()
            let vcToOpen = childCoordinator.showLoggedPINScreen()
            navCont = UINavigationController(rootViewController: vcToOpen)
            navigationController = navCont
        case .Auth:
            let childCoordinator = AuthCoordinator()
            let vcToOpen = childCoordinator.showAuthScreen()
            navCont = UINavigationController(rootViewController: vcToOpen)
            navigationController = navCont
        }
        navigationController?.navigationBar.tintColor = .black
        return navCont
    }
}
