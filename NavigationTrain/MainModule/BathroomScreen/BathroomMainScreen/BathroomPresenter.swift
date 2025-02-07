//
//  BathroomPresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation

protocol BathroomPresentationLogic: AnyObject {
    var viewController: BathroomDisplayLogic? { get set }

}

class BathroomPresenter: BathroomPresentationLogic {
    weak var viewController: BathroomDisplayLogic?
    

}


