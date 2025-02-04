//
//  MainCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 03.02.2025.
//


import Foundation
import UIKit

protocol MainCoordinatorProtocol: AnyObject {
    func openMainScreen()-> UIViewController
    func openScreen()-> UIViewController
    func openAuthScreenAfterExit()
}

class MainCoordinator {
    private let parentCoordinator = CardinalCoordinator.shared
    let factory = MainFactory(configurator: MainConfigurator())
    
    func showMainScreen()-> MainDisplayLogic {
        let vc = factory.makeMain()
        return vc
    }
    
}

extension MainCoordinator: MainCoordinatorProtocol {
    func openMainScreen() -> UIViewController {
        let vc = factory.makeMain()
        return vc
    }
    
    func openScreen() -> UIViewController {
        let vc = factory.makeMain()
        return vc
    }
    
    func openAuthScreenAfterExit() {
        parentCoordinator.openAuthAfterExit()
    }
}
