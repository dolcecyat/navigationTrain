//
//  UIImageView+.swift
//  NavigationTrain
//
//  Created by Алина Класс on 31.01.2025.
//

import Foundation
import UIKit

extension UIImageView {
    func fillCircle() {
        self.image = UIImage(systemName: "circlebadge.fill")
    }
    
    func emptyCircle() {
        self.image = UIImage(systemName: "circlebadge")
    }
}
