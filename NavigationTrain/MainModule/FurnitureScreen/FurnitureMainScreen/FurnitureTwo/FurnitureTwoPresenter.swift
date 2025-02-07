//
//  FurnitureTwoPresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol FurnitureTwoPresentationLogic: AnyObject {
    var viewController: FurnitureTwoDisplayLogic? { get set }

}

class FurnitureTwoPresenter: FurnitureTwoPresentationLogic {
    weak var viewController: FurnitureTwoDisplayLogic?
    

}


