//
//  DetailsTwoInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol DetailsTwoBusinessLogic {
    var presenter: DetailsTwoPresentationLogic? { get set }

}

class DetailsTwoInteractor: DetailsTwoBusinessLogic {
    weak var presenter: DetailsTwoPresentationLogic?

}

