//
//  BathroomOnePresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol BathroomOnePresentationLogic: AnyObject {
    var viewController: BathroomOneDisplayLogic? { get set }

}

class BathroomOnePresenter: BathroomOnePresentationLogic {
    weak var viewController: BathroomOneDisplayLogic?
    

}


