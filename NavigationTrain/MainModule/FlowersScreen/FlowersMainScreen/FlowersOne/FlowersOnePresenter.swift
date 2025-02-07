//
//  FlowersOnePresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol FlowersOnePresentationLogic: AnyObject {
    var viewController: FlowersOneDisplayLogic? { get set }

}

class FlowersOnePresenter: FlowersOnePresentationLogic {
    weak var viewController: FlowersOneDisplayLogic?
    

}


