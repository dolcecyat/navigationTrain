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
    
    func openAuthAfterExit() {
        var viewControllers = navigationController?.viewControllers
        viewControllers?.removeLast()
        let childCoordinator = AuthCoordinator()
        let vcToopen = childCoordinator.showAuthScreen()
        viewControllers?.append(vcToopen)
        navigationController?.setViewControllers(viewControllers!, animated: true)
    }
    
    func openMainAfterAuth() {
        let childCoordinator = MainCoordinator()
        let vcToOpen = childCoordinator.openMainScreen()
        if let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate,
           let window = sceneDelegate.window {
            UIView.transition(with: window, duration: 0.3, options: .transitionCrossDissolve, animations: {
                window.rootViewController = vcToOpen
                window.makeKeyAndVisible()
            }, completion: nil)
        }
    }
}

extension CardinalCoordinator: CardinalCoordinatorProtocol {
    
    func start()-> UINavigationController {
        var navCont = UINavigationController()
        let childCoordinator = AuthCoordinator()
        
        switch startIn {
        case .PIN:
            let vcToOpen = childCoordinator.showLoggedPINScreen()
            navCont = UINavigationController(rootViewController: vcToOpen)
            navigationController = navCont
        case .Auth:
            let vcToOpen = childCoordinator.showAuthScreen()
            navCont = UINavigationController(rootViewController: vcToOpen)
            navigationController = navCont
        }
        navigationController?.navigationBar.tintColor = .black
        return navCont
    }
}
