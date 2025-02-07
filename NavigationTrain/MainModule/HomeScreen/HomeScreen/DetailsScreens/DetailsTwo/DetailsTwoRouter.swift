//
//  DetailsTwoRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation
import UIKit

protocol DetailsTwoRoutingLogic {
    var viewController: DetailsTwoDisplayLogic? { get set }

}

class DetailsTwoRouter: NSObject, DetailsTwoRoutingLogic {
   weak var viewController: DetailsTwoDisplayLogic?
}
