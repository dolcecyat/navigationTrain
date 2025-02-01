//
//  UserInfo.swift
//  NavigationTrain
//
//  Created by Алина Класс on 01.02.2025.
//

import Foundation

struct UserInfo: Codable {
    var password: String?
    var login: String?
    var logged: Bool?
    var saveCode: [Int]?
}
