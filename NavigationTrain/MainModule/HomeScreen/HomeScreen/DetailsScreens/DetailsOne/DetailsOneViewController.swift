//
//  DetailsOneViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import UIKit

protocol DetailsOneDisplayLogic: UIViewController {
    var interactor: DetailsOneBusinessLogic? { get set }
    var router: DetailsOneRoutingLogic? { get set }
}

class DetailsOneViewController: UIViewController, DetailsOneDisplayLogic {
    var interactor: DetailsOneBusinessLogic?
    var router: DetailsOneRoutingLogic?
    private let nextScreenButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setup()
    }
}

// MARK: - Display Logic Functions
extension DetailsOneViewController {

}

// MARK: - Set UI Functions
extension DetailsOneViewController {
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
        view.backgroundColor = .white
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
