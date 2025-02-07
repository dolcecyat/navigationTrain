//
//  FurnitureCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation
import UIKit

protocol FurnitureCoordinatorProtocol: AnyObject {

}

class FurnitureCoordinator {
    private let parentCoordinator = MainCoordinator.shared
    let factory = FurnitureFactory(configurator: FurnitureConfigurator())

}

extension FurnitureCoordinator: FurnitureCoordinatorProtocol {

}
