//
//  HomeRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation
import UIKit

protocol HomeRoutingLogic {
    var viewController: HomeDisplayLogic? { get set }

}

class HomeRouter: NSObject, HomeRoutingLogic {
   weak var viewController: HomeDisplayLogic?
}
