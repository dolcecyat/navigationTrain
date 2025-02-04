//
//  MainInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 03.02.2025.
//


import Foundation

protocol MainBusinessLogic {
    var presenter: MainPresentationLogic? { get <#set#> }

}

class MainInteractor: MainBusinessLogic {
    weak var presenter: MainPresentationLogic?

}

