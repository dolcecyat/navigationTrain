//
//  FurnitureOneRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation
import UIKit

protocol FurnitureOneRoutingLogic {
    var viewController: FurnitureOneDisplayLogic? { get set }
    func nextScreenButtonPressed()
}

class FurnitureOneRouter: NSObject, FurnitureOneRoutingLogic {
   weak var viewController: FurnitureOneDisplayLogic?
    private let coordinator: FurnitureCoordinatorProtocol = FurnitureCoordinator()
    
    func nextScreenButtonPressed() {
        let vcToOpen = coordinator.createFurnitureTwoScreen()
        viewController?.navigationController?.pushViewController(vcToOpen, animated: true)
    }
}
