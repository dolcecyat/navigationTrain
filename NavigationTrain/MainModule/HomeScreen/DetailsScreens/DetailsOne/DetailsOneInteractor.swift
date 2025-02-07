//
//  DetailsOneInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol DetailsOneBusinessLogic {
    var presenter: DetailsOnePresentationLogic? { get set }

}

class DetailsOneInteractor: DetailsOneBusinessLogic {
    weak var presenter: DetailsOnePresentationLogic?

}

