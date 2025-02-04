//
//  BathroomViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import UIKit

protocol BathroomDisplayLogic: UIViewController {
    var interactor: BathroomBusinessLogic? { get set }
    var router: BathroomRoutingLogic? { get set }
}

class BathroomViewController: UIViewController, BathroomDisplayLogic,TabBarViewProtocol {
    var interactor: BathroomBusinessLogic?
    var router: BathroomRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        setupView()
    }
}

// MARK: - Display Logic Functions
extension BathroomViewController {

}

// MARK: - Set UI Functions
extension BathroomViewController {
    private func setupView() {
        
    }
 
}
