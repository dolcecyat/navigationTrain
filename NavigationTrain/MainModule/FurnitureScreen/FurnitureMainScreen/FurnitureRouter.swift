//
//  FurnitureRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation
import UIKit

protocol FurnitureRoutingLogic {
    var viewController: FurnitureDisplayLogic? { get set }
    func nextScreenButtonPressed()

}

class FurnitureRouter: NSObject, FurnitureRoutingLogic {
   weak var viewController: FurnitureDisplayLogic?
    private let coordinator: FurnitureCoordinatorProtocol = FurnitureCoordinator()
    func nextScreenButtonPressed() {
        let vcToOpen = coordinator.createFurnitureOneScreen()
        viewController?.navigationController?.pushViewController(vcToOpen, animated: true)
    }
}
