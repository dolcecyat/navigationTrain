//
//  FurnitureOneViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import UIKit

protocol FurnitureOneDisplayLogic: UIViewController {
    var interactor: FurnitureOneBusinessLogic? { get set }
    var router: FurnitureOneRoutingLogic? { get set }
}

class FurnitureOneViewController: UIViewController, FurnitureOneDisplayLogic {
    var interactor: FurnitureOneBusinessLogic?
    var router: FurnitureOneRoutingLogic?
    // MARK: UI Properties
    private let nextScreenButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setup()
    }
}

// MARK: - Display Logic Functions
extension FurnitureOneViewController {

}

// MARK: - Set UI Functions
extension FurnitureOneViewController {
    private func setup() {
        addViews()
        setConstraints()
        setUI()
        setUpActions()
    }
 
    private func addViews() {
        self.view.addSubview(nextScreenButton)
      
    }
    private func setConstraints() {
        nextScreenButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            nextScreenButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            nextScreenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextScreenButton.widthAnchor.constraint(equalToConstant: 150),

        ])
    }
    private func setUI() {
        navigationItem.title = "Furniture One"

        self.navigationController?.navigationBar.tintColor = .black
        view.backgroundColor = .lightGray
        nextScreenButton.setTitle("Next Screen", for: .normal)
        nextScreenButton.setTitleColor(.black, for: .normal)
        nextScreenButton.backgroundColor = .systemGray
        nextScreenButton.layer.cornerRadius = 15
        
    }
    
    private func setUpActions() {
        nextScreenButton.addTarget(self, action: #selector(nextScreenButtonPressed), for: .touchUpInside)
    }
    
    @objc private func nextScreenButtonPressed() {
        router?.nextScreenButtonPressed()
    }
 
}
