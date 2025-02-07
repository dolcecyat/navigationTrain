//
//  MainCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 03.02.2025.
//
enum TabScreens: String {
    case home
    case flowers
    case furniture
    case bathroom
}


import Foundation
import UIKit

protocol MainCoordinatorProtocol: AnyObject {
    func openMainScreen()-> UIViewController
    func openAuthScreenAfterExit()
    func getAllTabViews() -> [TabScreens: UINavigationController]
}

class MainCoordinator: MainCoordinatorProtocol {
    
    static let shared = MainCoordinator()
    private let parentCoordinator = CardinalCoordinator.shared
    private let factory: MainFactoryProtocol = MainFactory()

    
    func openMainScreen() -> UIViewController {
        return factory.createMainScreen()
    
    }
    
    func openAuthScreenAfterExit() {
        parentCoordinator.openAuthAfterExit()
    }
    
    // MARK: Making TabViewScreens
    
    func getAllTabViews() -> [TabScreens : UINavigationController] {
        let homeScreen =  UINavigationController(rootViewController:makeHomeScreen())
        let bathroomScreen = UINavigationController(rootViewController: makeBathroomScreen())
        let furnitureScreen =  UINavigationController(rootViewController: makeFurnitureScreen())
        let flowersScreen =  UINavigationController(rootViewController: makeFlowersScreen())
        return [.home: homeScreen,.bathroom: bathroomScreen,.furniture: furnitureScreen,.flowers: flowersScreen]
    }
    private func makeHomeScreen() -> TabBarViewProtocol {
        factory.createHomeScreen() as! TabBarViewProtocol
    }
    
    private func makeBathroomScreen() -> TabBarViewProtocol {
        factory.createBathroomScreen() as! TabBarViewProtocol
    }
    private func makeFurnitureScreen() -> TabBarViewProtocol {
        factory.createFurnitureScreen() as! TabBarViewProtocol
    }
    private func makeFlowersScreen() -> TabBarViewProtocol {
        factory.createFlowersScreen() as! TabBarViewProtocol
    }
}

