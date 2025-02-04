//
//  MainPresenter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 03.02.2025.
//


import Foundation

protocol MainPresentationLogic: AnyObject {
    var viewController: MainDisplayLogic? { get set }

}

class MainPresenter: MainPresentationLogic {
    weak var viewController: MainDisplayLogic?
    

}


