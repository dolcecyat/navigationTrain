//
//  FlowersOneInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation

protocol FlowersOneBusinessLogic {
    var presenter: FlowersOnePresentationLogic? { get set }

}

class FlowersOneInteractor: FlowersOneBusinessLogic {
    weak var presenter: FlowersOnePresentationLogic?

}

