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

}

class MainRouter: NSObject, MainRoutingLogic {
    var viewController: MainDisplayLogic?
}
