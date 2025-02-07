//
//  FurnitureCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation
import UIKit

protocol FurnitureCoordinatorProtocol: AnyObject {
    func createFurnitureOneScreen()-> FurnitureOneDisplayLogic
    func createFurnitureTwoScreen()-> FurnitureTwoDisplayLogic
}

class FurnitureCoordinator {
    private let parentCoordinator = MainCoordinator.shared
    private let factory = FurnitureFactory()
}

extension FurnitureCoordinator: FurnitureCoordinatorProtocol {
    func createFurnitureOneScreen() -> any FurnitureOneDisplayLogic {
        factory.createFurnitureOneScreen()
    }
    
    func createFurnitureTwoScreen() -> any FurnitureTwoDisplayLogic {
        factory.createFurnitureTwoScreen()
    }
    

}
