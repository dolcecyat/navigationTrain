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

}

class FlowersRouter: NSObject, FlowersRoutingLogic {
   weak var viewController: FlowersDisplayLogic?
}
