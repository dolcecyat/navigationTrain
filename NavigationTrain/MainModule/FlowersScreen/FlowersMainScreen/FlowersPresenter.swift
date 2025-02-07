//
//  FlowersPresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation

protocol FlowersPresentationLogic: AnyObject {
    var viewController: FlowersDisplayLogic? { get set }

}

class FlowersPresenter: FlowersPresentationLogic {
    weak var viewController: FlowersDisplayLogic?
    

}


