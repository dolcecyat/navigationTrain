//
//  FurnitureOneInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol FurnitureOneBusinessLogic {
    var presenter: FurnitureOnePresentationLogic? { get set }

}

class FurnitureOneInteractor: FurnitureOneBusinessLogic {
    weak var presenter: FurnitureOnePresentationLogic?

}

