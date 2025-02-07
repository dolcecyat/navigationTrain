//
//  BathroomInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation

protocol BathroomBusinessLogic {
    var presenter: BathroomPresentationLogic? { get set }

}

class BathroomInteractor: BathroomBusinessLogic {
    weak var presenter: BathroomPresentationLogic?

}

