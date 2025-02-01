//
//  LoggedPINRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 01.02.2025.
//


import Foundation
import UIKit

protocol LoggedPINRoutingLogic {
   func openMainScreen()
}

class LoggedPINRouter: NSObject, LoggedPINRoutingLogic {
        var coordinator: AuthCoordinatorProtocol?
        weak var viewController: UIViewController?
    
    func openMainScreen() {
        print("открываю главный экран")
    }
}
