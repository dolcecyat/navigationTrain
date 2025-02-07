//
//  BathroomOneInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol BathroomOneBusinessLogic {
    var presenter: BathroomOnePresentationLogic? { get set }

}

class BathroomOneInteractor: BathroomOneBusinessLogic {
    weak var presenter: BathroomOnePresentationLogic?

}

