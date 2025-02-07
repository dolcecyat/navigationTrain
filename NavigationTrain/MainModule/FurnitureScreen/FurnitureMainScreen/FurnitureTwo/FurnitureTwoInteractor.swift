//
//  FurnitureTwoInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol FurnitureTwoBusinessLogic {
    var presenter: FurnitureTwoPresentationLogic? { get set }

}

class FurnitureTwoInteractor: FurnitureTwoBusinessLogic {
    weak var presenter: FurnitureTwoPresentationLogic?

}

