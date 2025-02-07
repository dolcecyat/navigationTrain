//
//  ContactsOneInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol ContactsOneBusinessLogic {
    var presenter: ContactsOnePresentationLogic? { get set }

}

class ContactsOneInteractor: ContactsOneBusinessLogic {
    weak var presenter: ContactsOnePresentationLogic?

}

