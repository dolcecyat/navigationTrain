//
//  UDStorageManager.swift
//  NavigationTrain
//
//  Created by Алина Класс on 29.01.2025.
//

import Foundation

class UDStorageManager {
    let ud = UserDefaults.standard
    static let shared = UDStorageManager()
    
    func saveCode (code:[Int]) {
        ud.set(code, forKey: "PINCODE")
        print("pin saved")
    }
    
    func saveUserInfo (login: String, password: String) {
        ud.set(login, forKey: "login")
        ud.set(password, forKey: "password")
        print("userSaved")
    }
    
    func getCurrentUserInfo() -> [String]? {
        guard let password = ud.string(forKey: "password") else { return nil}
        guard let login = ud.string(forKey: "login") else { return nil}
        return [login, password]
    }
}
