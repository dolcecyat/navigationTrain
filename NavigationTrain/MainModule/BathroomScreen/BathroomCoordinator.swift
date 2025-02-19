//
//  BathroomCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation
import UIKit

protocol BathroomCoordinatorProtocol: AnyObject {
    func createBathroomOneScreen()-> BathroomOneDisplayLogic
}

class BathroomCoordinator {
    private let parentCoordinator = MainCoordinator.shared
    private let factory: BathroomFactoryProtocol = BathroomFactory()

}

extension BathroomCoordinator: BathroomCoordinatorProtocol {
    func createBathroomOneScreen() ->  BathroomOneDisplayLogic {
        factory.createBathroomOneScreen()
    }
    

}
