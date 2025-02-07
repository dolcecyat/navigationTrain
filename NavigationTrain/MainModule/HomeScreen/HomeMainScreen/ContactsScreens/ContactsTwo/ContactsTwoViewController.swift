//
//  ContactsTwoViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import UIKit

protocol ContactsTwoDisplayLogic: UIViewController {
    var interactor: ContactsTwoBusinessLogic? { get set }
    var router: ContactsTwoRoutingLogic? { get set }
}

class ContactsTwoViewController: UIViewController, ContactsTwoDisplayLogic {
    var interactor: ContactsTwoBusinessLogic?
    var router: ContactsTwoRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        setupView()
    }
}

// MARK: - Display Logic Functions
extension ContactsTwoViewController {

}

// MARK: - Set UI Functions
extension ContactsTwoViewController {
    private func setupView() {
        self.navigationController?.navigationBar.barTintColor = .black
        navigationItem.title = "ContactsTwo"

    }
 
}
