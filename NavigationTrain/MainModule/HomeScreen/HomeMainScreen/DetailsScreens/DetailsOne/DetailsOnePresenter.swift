//
//  DetailsOnePresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol DetailsOnePresentationLogic: AnyObject {
    var viewController: DetailsOneDisplayLogic? { get set }

}

class DetailsOnePresenter: DetailsOnePresentationLogic {
    weak var viewController: DetailsOneDisplayLogic?
    

}


