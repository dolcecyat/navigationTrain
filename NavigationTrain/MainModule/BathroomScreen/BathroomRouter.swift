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

}

class BathroomRouter: NSObject, BathroomRoutingLogic {
   weak var viewController: BathroomDisplayLogic?
}
