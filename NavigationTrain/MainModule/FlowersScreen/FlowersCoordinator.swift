//
//  FlowersCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation
import UIKit

protocol FlowersCoordinatorProtocol: AnyObject {
    func createFlowersOneScreen()-> FlowersOneDisplayLogic
}

class FlowersCoordinator {
    private let parentCoordinator = MainCoordinator.shared
    private let factory = FlowersFactory()
}

extension FlowersCoordinator: FlowersCoordinatorProtocol {
    
    func createFlowersOneScreen()-> FlowersOneDisplayLogic {
        factory.createFlowersOneScreen()
    }
}
