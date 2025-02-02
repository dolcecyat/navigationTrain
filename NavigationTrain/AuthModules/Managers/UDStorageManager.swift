//
//  UDStorageManager.swift
//  NavigationTrain
//
//  Created by Алина Класс on 29.01.2025.
//

import Foundation

class UDStorageManager {
    private let ud = UserDefaults.standard
    static let shared = UDStorageManager()
    
    func saveCode (code:[Int]) {
        ud.set(code, forKey: "PINCODE")
        print("pin saved")
    }
    func userLoggedOut() {
        ud.set(false, forKey: "userLogged")
    }
    
    func saveUserInfo (login: String, password: String) {
        ud.set(login, forKey: "login")
        ud.set(password, forKey: "password")
        ud.set(true, forKey: "userLogged")
        print("userSaved")
    }
    
    func checkIfUserLogged() -> Bool {
        ud.bool(forKey: "userLogged")
    }
    
    
    func getCurrentUserInfo() -> [String]? {
        guard let password = ud.string(forKey: "password") else { return nil}
        guard let login = ud.string(forKey: "login") else { return nil}
        return [login, password]
    }
    
    func logInUserWithCode(code: [Int])-> Bool {
        let registedCode: [Int] = ud.array(forKey: "PINCODE")  as? [Int] ?? [Int]()
        if registedCode == code {
            return true
        } else {
            return false
        }
    }
}
