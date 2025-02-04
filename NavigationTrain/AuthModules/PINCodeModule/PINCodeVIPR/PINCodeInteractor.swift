//
//  PINCodeInteractor.swift
//  NavigationTrain
//
//  Created by Алина Класс on 31.01.2025.
//


import Foundation

protocol PINCodeBusinessLogic {
    func saveCodes(code: [Int])
    func exitButtonTapped()
}

class PINCodeInteractor: PINCodeBusinessLogic {
    var presenter: PINCodePresentationLogic?
    
    // MARK: saveCode methods
    
    func saveCodes(code: [Int]) {
        UDStorageManager.shared.saveCode(code: code)
    }
    func exitButtonTapped() {
        UDStorageManager.shared.userLoggedOut()
    }
}

