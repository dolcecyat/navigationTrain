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
    func detailButtonPressed()
    func contactsButtonPressed()

}

class HomeRouter: NSObject, HomeRoutingLogic {
   weak var viewController: HomeDisplayLogic?
    private let coordinator: HomeCoordinatorProtocol = HomeCoordinator()
    
    func detailButtonPressed() {
        let vcToOpen = coordinator.openDetailOneScreen()
        viewController?.navigationController?.pushViewController(vcToOpen, animated: true)
    }
    
    func contactsButtonPressed() {
        let vcToOpen = coordinator.openContactsOneScreen()
        viewController?.navigationController?.pushViewController(vcToOpen, animated: true)
    }
}
