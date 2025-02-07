//
//  FurnitureTwoRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation
import UIKit

protocol FurnitureTwoRoutingLogic {
    var viewController: FurnitureTwoDisplayLogic? { get set }

}

class FurnitureTwoRouter: NSObject, FurnitureTwoRoutingLogic {
   weak var viewController: FurnitureTwoDisplayLogic?
}
