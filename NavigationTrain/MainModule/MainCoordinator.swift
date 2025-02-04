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
    func getAllTabViews() -> [TabScreens: UIViewController]
}

class MainCoordinator: MainCoordinatorProtocol {
    static let shared = MainCoordinator()
    private let parentCoordinator = CardinalCoordinator.shared

    
    func openMainScreen() -> UIViewController {
        let factory = MainFactory(configurator: MainConfigurator())
        let vc = factory.makeMain()
        return vc
    }
    
    func openAuthScreenAfterExit() {
        parentCoordinator.openAuthAfterExit()
    }
    
    // MARK: Making TabViewScreens
    
    func getAllTabViews() -> [TabScreens : UIViewController] {
         let homeScreen = makeHomeScreen()
         let bathroomScreen = makeBathroomScreen()
         let furnitureScreen = makeFurnitureScreen()
         let flowersScreen = makeFlowersScreen()
        return [.home: homeScreen,.bathroom: bathroomScreen,.furniture: furnitureScreen,.flowers: flowersScreen]
    }
    private func makeHomeScreen() -> TabBarViewProtocol {
        let childFactory = HomeFactory(configurator: HomeConfigurator())
        let vc = childFactory.makeHome()
        return vc as! TabBarViewProtocol
    }
    
    private func makeBathroomScreen() -> TabBarViewProtocol {
        let childFactory = BathroomFactory(configurator: BathroomConfigurator())
        let vc = childFactory.makeBathroom()
        return vc as! TabBarViewProtocol
    }
    private func makeFurnitureScreen() -> TabBarViewProtocol {
        let childFactory = FurnitureFactory(configurator: FurnitureConfigurator())
        let vc = childFactory.makeFurniture()
        return vc as! TabBarViewProtocol
    }
    private func makeFlowersScreen() -> TabBarViewProtocol {
        let childFactory = FlowersFactory(configurator: FlowersConfigurator())
        let vc = childFactory.makeFlowers()
        return vc as! TabBarViewProtocol
    }
}

