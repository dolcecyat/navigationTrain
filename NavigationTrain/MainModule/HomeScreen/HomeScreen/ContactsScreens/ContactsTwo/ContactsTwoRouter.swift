//
//  ContactsTwoRouter.swift
//  NavigationTrain
//
//  Created by Алина Класс on 07.02.2025.
//

import Foundation
import UIKit

protocol ContactsTwoRoutingLogic {
    var viewController: ContactsTwoDisplayLogic? { get set }

}

class ContactsTwoRouter: NSObject, ContactsTwoRoutingLogic {
   weak var viewController: ContactsTwoDisplayLogic?
}
