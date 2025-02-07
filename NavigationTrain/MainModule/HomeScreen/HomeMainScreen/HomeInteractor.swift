//
//  HomeInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation

protocol HomeBusinessLogic {
    var presenter: HomePresentationLogic? { get set }

}

class HomeInteractor: HomeBusinessLogic {
    weak var presenter: HomePresentationLogic?

}

