//
//  UsernameValidator.swift
//  Login Form
//
//  Created by Akarsh Seggemu on 27.04.21.
//

import Foundation

class UsernameValidator {
    private let characterSet = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")

    var rules: [ValidationRule] = []
    
    func validate(_ username: String) -> Bool {

        for rule in rules {
            if !rule.validate(value: username) {
                return false
            }
        }

        if username.rangeOfCharacter(from: characterSet.inverted) != nil {
            return false
        } else {
            return true
        }
    }
}
