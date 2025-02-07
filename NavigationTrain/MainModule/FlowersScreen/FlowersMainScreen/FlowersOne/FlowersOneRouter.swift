//
//  FlowersOneRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation
import UIKit

protocol FlowersOneRoutingLogic {
    var viewController: FlowersOneDisplayLogic? { get set }

}

class FlowersOneRouter: NSObject, FlowersOneRoutingLogic {
   weak var viewController: FlowersOneDisplayLogic?
}
