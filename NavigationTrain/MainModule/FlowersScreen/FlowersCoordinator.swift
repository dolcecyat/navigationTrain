//
//  FlowersCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation
import UIKit

protocol FlowersCoordinatorProtocol: AnyObject {

}

class FlowersCoordinator {
    private let parentCoordinator = MainCoordinator.shared
    let factory = FlowersFactory(configurator: FlowersConfigurator())

}

extension FlowersCoordinator: FlowersCoordinatorProtocol {

}
