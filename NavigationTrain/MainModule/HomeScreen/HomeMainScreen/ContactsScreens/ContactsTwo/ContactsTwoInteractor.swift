//
//  ContactsTwoInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol ContactsTwoBusinessLogic {
    var presenter: ContactsTwoPresentationLogic? { get set }

}

class ContactsTwoInteractor: ContactsTwoBusinessLogic {
    weak var presenter: ContactsTwoPresentationLogic?

}

