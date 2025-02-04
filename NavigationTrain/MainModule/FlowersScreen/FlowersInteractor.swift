//
//  FlowersInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation

protocol FlowersBusinessLogic {
    var presenter: FlowersPresentationLogic? { get set }

}

class FlowersInteractor: FlowersBusinessLogic {
    weak var presenter: FlowersPresentationLogic?

}

