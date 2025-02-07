//
//  FurnitureInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation

protocol FurnitureBusinessLogic {
    var presenter: FurniturePresentationLogic? { get set }

}

class FurnitureInteractor: FurnitureBusinessLogic {
    weak var presenter: FurniturePresentationLogic?

}

