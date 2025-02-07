//
//  BathroomRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation
import UIKit

protocol BathroomRoutingLogic {
    var viewController: BathroomDisplayLogic? { get set }
    func nextScreenButtonPressed()

}

class BathroomRouter: NSObject, BathroomRoutingLogic {
   weak var viewController: BathroomDisplayLogic?
    private let coordinator: BathroomCoordinatorProtocol = BathroomCoordinator()
    
    func nextScreenButtonPressed() {
        let vcToOpen = coordinator.createBathroomOneScreen()
        viewController?.navigationController?.pushViewController(vcToOpen, animated: true)
    }
}
