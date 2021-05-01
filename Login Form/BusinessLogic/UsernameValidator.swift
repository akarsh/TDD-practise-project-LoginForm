//
//  UsernameValidator.swift
//  Login Form
//
//  Created by Akarsh Seggemu on 27.04.21.
//

import Foundation

class UsernameValidator {
    private let characterSet = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")

    func validate(_ username: String) -> Bool {
        if username.isEmpty || username.count <= 5 || username.count > 9 {
            return false
        }

        if username.contains(" ") {
            return false
        }

        if let _ = Int(username) {
            return false
        }

        if username.rangeOfCharacter(from: characterSet.inverted) != nil {
            return false
        } else {
            return true
        }
    }
}
