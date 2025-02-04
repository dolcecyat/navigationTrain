//
//  HomePresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation

protocol HomePresentationLogic: AnyObject {
    var viewController: HomeDisplayLogic? { get set }

}

class HomePresenter: HomePresentationLogic {
    weak var viewController: HomeDisplayLogic?
    

}


