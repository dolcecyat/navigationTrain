//
//  FurnitureTwoViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import UIKit

protocol FurnitureTwoDisplayLogic: UIViewController {
    var interactor: FurnitureTwoBusinessLogic? { get set }
    var router: FurnitureTwoRoutingLogic? { get set }
}

class FurnitureTwoViewController: UIViewController, FurnitureTwoDisplayLogic {
    var interactor: FurnitureTwoBusinessLogic?
    var router: FurnitureTwoRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setupView()
    }
}

// MARK: - Display Logic Functions
extension FurnitureTwoViewController {

}

// MARK: - Set UI Functions
extension FurnitureTwoViewController {
    private func setupView() {
        
    }
 
}
