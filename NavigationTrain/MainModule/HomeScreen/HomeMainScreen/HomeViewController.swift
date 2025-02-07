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

class HomeViewController: UIViewController, TabBarViewProtocol {
    var interactor: HomeBusinessLogic?
    var router: HomeRoutingLogic?
    
    // MARK: UI Properties
    let detailButton = UIButton()
    let contactsButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK: - Display Logic Functions
extension HomeViewController: HomeDisplayLogic {

}

// MARK: - Set UI Functions
extension HomeViewController {
    
    private func setup() {
        addViews()
        setConstraints()
        setUI()
        setUpActions()
    }
 
    private func addViews() {
        self.view.addSubview(detailButton)
        self.view.addSubview(contactsButton)
      
    }
    private func setConstraints() {
        detailButton.translatesAutoresizingMaskIntoConstraints = false
        contactsButton.translatesAutoresizingMaskIntoConstraints = false
     
        
        NSLayoutConstraint.activate([
            detailButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            detailButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            detailButton.widthAnchor.constraint(equalToConstant: 100),
            
            contactsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contactsButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            contactsButton.widthAnchor.constraint(equalToConstant: 100),

        ])
    }
    private func setUI() {
        self.navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationItem.title = "Home"
        view.backgroundColor = .white
        detailButton.setTitle("Details", for: .normal)
        detailButton.setTitleColor(.black, for: .normal)
        detailButton.backgroundColor = .systemGray
        detailButton.layer.cornerRadius = 15
        
        
        contactsButton.setTitle("Contacts", for: .normal)
        contactsButton.setTitleColor(.black, for: .normal)
        contactsButton.backgroundColor = .systemGray
        contactsButton.layer.cornerRadius = 15

    }
    private func setUpActions() {
        detailButton.addTarget(self, action: #selector(detailButtonPressed), for: .touchUpInside)
        contactsButton.addTarget(self, action: #selector(contactsButtonPressed), for: .touchUpInside)
    }
    
    @objc private func detailButtonPressed() {
        router?.detailButtonPressed()
    }
 
    @objc private func contactsButtonPressed() {
        router?.contactsButtonPressed()
    }
}
