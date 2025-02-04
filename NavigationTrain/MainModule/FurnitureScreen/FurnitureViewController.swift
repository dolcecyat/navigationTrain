//
//  FurnitureViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import UIKit

protocol FurnitureDisplayLogic: UIViewController {
    var interactor: FurnitureBusinessLogic? { get set }
    var router: FurnitureRoutingLogic? { get set }
}

class FurnitureViewController: UIViewController, FurnitureDisplayLogic,TabBarViewProtocol {
    var interactor: FurnitureBusinessLogic?
    var router: FurnitureRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        setupView()
    }
}

// MARK: - Display Logic Functions
extension FurnitureViewController {

}

// MARK: - Set UI Functions
extension FurnitureViewController {
    private func setupView() {
        
    }
 
}
