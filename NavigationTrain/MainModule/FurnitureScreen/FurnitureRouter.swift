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

}

class FurnitureRouter: NSObject, FurnitureRoutingLogic {
   weak var viewController: FurnitureDisplayLogic?
}
