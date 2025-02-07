//
//  ContactsOneRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation
import UIKit

protocol ContactsOneRoutingLogic {
    var viewController: ContactsOneDisplayLogic? { get set }
    func nextScreenButtonPressed()
}

class ContactsOneRouter: NSObject, ContactsOneRoutingLogic {
   weak var viewController: ContactsOneDisplayLogic?
    private let coordinator: HomeCoordinatorProtocol = HomeCoordinator()
    
    func nextScreenButtonPressed() {
        let vcToOpen = coordinator.openContactsTwoScreen()
        viewController?.navigationController?.pushViewController(vcToOpen, animated: true)
    }
}
