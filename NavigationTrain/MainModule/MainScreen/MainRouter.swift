//
//  MainRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 03.02.2025.
//


import Foundation
import UIKit

protocol MainRoutingLogic {
    var viewController: MainDisplayLogic? { get set }
    func getTabScreens()-> [TabScreens : UINavigationController]

}

class MainRouter: NSObject, MainRoutingLogic {
    let coordinator = MainCoordinator.shared
    weak var viewController: MainDisplayLogic?

    func getTabScreens()-> [TabScreens : UINavigationController] {
       return coordinator.getAllTabViews()
    }
}
