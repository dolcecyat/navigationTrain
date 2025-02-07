//
//  BathroomViewController.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import UIKit

protocol BathroomDisplayLogic: UIViewController {
    var interactor: BathroomBusinessLogic? { get set }
    var router: BathroomRoutingLogic? { get set }
}

class BathroomViewController: UIViewController, BathroomDisplayLogic,TabBarViewProtocol {
    var interactor: BathroomBusinessLogic?
    var router: BathroomRoutingLogic?
    private let nextScreenButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        setup()
    }
}

// MARK: - Display Logic Functions
extension BathroomViewController {

}

// MARK: - Set UI Functions
extension BathroomViewController {
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
