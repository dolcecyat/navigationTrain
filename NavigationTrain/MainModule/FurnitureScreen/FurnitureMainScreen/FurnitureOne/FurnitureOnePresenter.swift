//
//  FurnitureOnePresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol FurnitureOnePresentationLogic: AnyObject {
    var viewController: FurnitureOneDisplayLogic? { get set }

}

class FurnitureOnePresenter: FurnitureOnePresentationLogic {
    weak var viewController: FurnitureOneDisplayLogic?
    

}


