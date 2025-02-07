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
    private let nextScreenButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        setup()
    }
}

// MARK: - Display Logic Functions
extension FlowersViewController {

}

// MARK: - Set UI Functions
extension FlowersViewController {
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
        self.navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationItem.title = "Flowers"
        self.navigationController?.navigationBar.tintColor = .black
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
