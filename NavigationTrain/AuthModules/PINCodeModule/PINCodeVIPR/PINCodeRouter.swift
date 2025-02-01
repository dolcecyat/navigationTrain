//
//  PINCodeRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 31.01.2025.
//


import Foundation
import UIKit

protocol PINCodeRoutingLogic {
    func openMainScreen()

}

class PINCodeRouter: NSObject, PINCodeRoutingLogic {
//    var parentCoordinator: AuthCoordinatorProtocol?
    weak var viewController: UIViewController?
    func openMainScreen() {
        print("opening Main")
    }
}
