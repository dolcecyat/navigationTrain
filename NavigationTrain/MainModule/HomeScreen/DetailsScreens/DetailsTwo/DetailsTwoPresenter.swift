//
//  DetailsTwoPresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol DetailsTwoPresentationLogic: AnyObject {
    var viewController: DetailsTwoDisplayLogic? { get set }

}

class DetailsTwoPresenter: DetailsTwoPresentationLogic {
    weak var viewController: DetailsTwoDisplayLogic?
    

}


