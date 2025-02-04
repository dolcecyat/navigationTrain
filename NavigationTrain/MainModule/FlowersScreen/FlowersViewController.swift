//
//  FlowersViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import UIKit

protocol FlowersDisplayLogic: UIViewController {
    var interactor: FlowersBusinessLogic? { get set }
    var router: FlowersRoutingLogic? { get set }
}

class FlowersViewController: UIViewController, FlowersDisplayLogic,TabBarViewProtocol {
    var interactor: FlowersBusinessLogic?
    var router: FlowersRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        setupView()
    }
}

// MARK: - Display Logic Functions
extension FlowersViewController {

}

// MARK: - Set UI Functions
extension FlowersViewController {
    private func setupView() {
        
    }
 
}
