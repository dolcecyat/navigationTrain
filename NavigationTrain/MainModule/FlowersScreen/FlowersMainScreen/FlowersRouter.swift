//
//  FlowersRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation
import UIKit

protocol FlowersRoutingLogic {
    var viewController: FlowersDisplayLogic? { get set }
    func nextScreenButtonPressed()
}

class FlowersRouter: NSObject, FlowersRoutingLogic {
   weak var viewController: FlowersDisplayLogic?
    private let coordinator: FlowersCoordinatorProtocol = FlowersCoordinator()
    
    func nextScreenButtonPressed() {
        let vcToOpen = coordinator.createFlowersOneScreen()
        viewController?.navigationController?.pushViewController(vcToOpen, animated: true)
    }
}
