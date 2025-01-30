//
//  CardinalCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 28.01.2025.
//

import Foundation
import UIKit
protocol CardinalCoordinatorProtocol: AnyObject {
}

class CardinalCoordinator: CardinalCoordinatorProtocol {
    
    enum Directions {
       case PIN
       case Auth
   }
    
    func start(direction: Directions)-> UIViewController {
        var vcToOpen = UIViewController()
        switch direction {
        case .PIN:
            print("1")
        case .Auth:
            let childCoordinator = AuthCoordinator()
            vcToOpen = childCoordinator.showAuthScreen()
        }
        return vcToOpen
    }
}
