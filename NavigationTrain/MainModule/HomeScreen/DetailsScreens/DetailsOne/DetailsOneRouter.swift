//
//  DetailsOneRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation
import UIKit

protocol DetailsOneRoutingLogic {
    var viewController: DetailsOneDisplayLogic? { get set }

    func nextScreenButtonPressed()
}

class DetailsOneRouter: NSObject, DetailsOneRoutingLogic {
   weak var viewController: DetailsOneDisplayLogic?
    private let coordinator: HomeCoordinatorProtocol = HomeCoordinator()
     
    func nextScreenButtonPressed() {
        let vcToOpen = coordinator.openDetailTwoScreen()
        viewController?.navigationController?.pushViewController(vcToOpen, animated: true)
    }
}
