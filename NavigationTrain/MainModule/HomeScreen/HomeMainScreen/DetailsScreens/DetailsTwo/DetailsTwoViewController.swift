//
//  DetailsTwoViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import UIKit

protocol DetailsTwoDisplayLogic: UIViewController {
    var interactor: DetailsTwoBusinessLogic? { get set }
    var router: DetailsTwoRoutingLogic? { get set }
}

class DetailsTwoViewController: UIViewController, DetailsTwoDisplayLogic {
    var interactor: DetailsTwoBusinessLogic?
    var router: DetailsTwoRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        setupView()
    }
}

// MARK: - Display Logic Functions
extension DetailsTwoViewController {

}

// MARK: - Set UI Functions
extension DetailsTwoViewController {
    private func setupView() {
        
    }
 
}
