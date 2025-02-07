//
//  ContactsOnePresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol ContactsOnePresentationLogic: AnyObject {
    var viewController: ContactsOneDisplayLogic? { get set }

}

class ContactsOnePresenter: ContactsOnePresentationLogic {
    weak var viewController: ContactsOneDisplayLogic?
    

}


