//
//  HomeViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import UIKit

protocol HomeDisplayLogic: UIViewController {
    var interactor: HomeBusinessLogic? { get set }
    var router: HomeRoutingLogic? { get set }
}

class HomeViewController: UIViewController, HomeDisplayLogic,TabBarViewProtocol {
    var interactor: HomeBusinessLogic?
    var router: HomeRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setupView()
    }
}

// MARK: - Display Logic Functions
extension HomeViewController {

}

// MARK: - Set UI Functions
extension HomeViewController {
    private func setupView() {
        
    }
 
}
