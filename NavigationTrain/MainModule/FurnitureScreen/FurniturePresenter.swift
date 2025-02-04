//
//  FurniturePresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation

protocol FurniturePresentationLogic: AnyObject {
    var viewController: FurnitureDisplayLogic? { get set }

}

class FurniturePresenter: FurniturePresentationLogic {
    weak var viewController: FurnitureDisplayLogic?
    

}


