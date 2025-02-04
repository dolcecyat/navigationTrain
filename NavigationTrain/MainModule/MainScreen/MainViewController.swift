//
//  MainViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 03.02.2025.
//


import UIKit

protocol MainDisplayLogic: UIViewController {
    var interactor: MainBusinessLogic? { get set }
    var router: MainRoutingLogic? { get set }
}

class MainViewController: UITabBarController, MainDisplayLogic {
    var interactor: MainBusinessLogic?
    var router: MainRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setupView()
    }
}

// MARK: - Display Logic Functions
extension MainViewController {

}

// MARK: - Set UI Functions
extension MainViewController {
    private func setupView() {
        
    }
 
}
