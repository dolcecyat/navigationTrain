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
    func start(direction: StartingDirections) -> UINavigationController
}

class CardinalCoordinator {
    static let shared = CardinalCoordinator()
    var navigationController: UINavigationController?
    

    func lala() {
        
    }
}

extension CardinalCoordinator: CardinalCoordinatorProtocol {
    
    func start(direction: StartingDirections)-> UINavigationController {
        var navCont = UINavigationController()
        switch direction {
        case .PIN:
            print("1")
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
