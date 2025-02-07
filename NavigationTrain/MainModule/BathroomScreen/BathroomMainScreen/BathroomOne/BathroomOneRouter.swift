//
//  BathroomOneRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation
import UIKit

protocol BathroomOneRoutingLogic {
    var viewController: BathroomOneDisplayLogic? { get set }

}

class BathroomOneRouter: NSObject, BathroomOneRoutingLogic {
   weak var viewController: BathroomOneDisplayLogic?
}
