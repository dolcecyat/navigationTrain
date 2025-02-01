//
//  LoggedPINViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 01.02.2025.
//


import UIKit

protocol LoggedPINDisplayLogic: UIViewController,FirstScreenProtocol {
    var interactor: LoggedPINBusinessLogic? { get set }
    var router: LoggedPINRoutingLogic? { get set }
}

class LoggedPINViewController: UIViewController, LoggedPINDisplayLogic {
    var interactor: LoggedPINBusinessLogic?
    var router: LoggedPINRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setupView()
    }
}

// MARK: - Display Logic Functions
extension LoggedPINViewController {

}

// MARK: - Set UI Functions
extension LoggedPINViewController {
    private func setupView() {
        
    }
 
}
