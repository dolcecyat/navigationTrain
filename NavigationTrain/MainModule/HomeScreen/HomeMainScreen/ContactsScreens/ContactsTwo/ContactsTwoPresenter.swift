//
//  ContactsTwoPresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol ContactsTwoPresentationLogic: AnyObject {
    var viewController: ContactsTwoDisplayLogic? { get set }

}

class ContactsTwoPresenter: ContactsTwoPresentationLogic {
    weak var viewController: ContactsTwoDisplayLogic?
    

}


