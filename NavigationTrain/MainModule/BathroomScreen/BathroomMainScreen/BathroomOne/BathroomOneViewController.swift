//
//  BathroomOneViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import UIKit

protocol BathroomOneDisplayLogic: UIViewController {
    var interactor: BathroomOneBusinessLogic? { get set }
    var router: BathroomOneRoutingLogic? { get set }
}

class BathroomOneViewController: UIViewController, BathroomOneDisplayLogic {
    var interactor: BathroomOneBusinessLogic?
    var router: BathroomOneRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setupView()
    }
}

// MARK: - Display Logic Functions
extension BathroomOneViewController {

}

// MARK: - Set UI Functions
extension BathroomOneViewController {
    private func setupView() {
        
    }
 
}
