//
//  HomeCoordinator.swift
//  NavigationTrain
//
//  Created by Алина Класс on 04.02.2025.
//

import Foundation
import UIKit

protocol HomeCoordinatorProtocol: AnyObject {
    func openDetailOneScreen()-> DetailsOneDisplayLogic
    func openDetailTwoScreen()-> DetailsTwoDisplayLogic
    func openContactsOneScreen()-> ContactsOneDisplayLogic
    func openContactsTwoScreen()-> ContactsTwoDisplayLogic
}

class HomeCoordinator {
    private let parentCoordinator = MainCoordinator.shared
    private let factory = HomeFactory()

}

extension HomeCoordinator: HomeCoordinatorProtocol {
    
    func openDetailOneScreen()-> DetailsOneDisplayLogic {
        factory.makeDetailsOne()
    }
    
    func openDetailTwoScreen()-> DetailsTwoDisplayLogic {
        factory.makeDetailsTwo()
    }
    
    func openContactsOneScreen()-> ContactsOneDisplayLogic {
        factory.makeContactsOne()
    }
    
    func openContactsTwoScreen()-> ContactsTwoDisplayLogic {
        factory.makeContactsTwo()
    }
}
