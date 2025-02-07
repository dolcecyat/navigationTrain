//
//  FlowersOneViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import UIKit

protocol FlowersOneDisplayLogic: UIViewController {
    var interactor: FlowersOneBusinessLogic? { get set }
    var router: FlowersOneRoutingLogic? { get set }
}

class FlowersOneViewController: UIViewController, FlowersOneDisplayLogic {
    var interactor: FlowersOneBusinessLogic?
    var router: FlowersOneRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        setupView()
    }
}

// MARK: - Display Logic Functions
extension FlowersOneViewController {

}

// MARK: - Set UI Functions
extension FlowersOneViewController {
    private func setupView() {
        navigationItem.title = "Flowers One"

        
    }
 
}
