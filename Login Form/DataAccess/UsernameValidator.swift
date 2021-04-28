//
//  UsernameValidator.swift
//  Login Form
//
//  Created by Akarsh Seggemu on 27.04.21.
//

import Foundation

class UsernameValidator {
    private var specialCharaters: [String] = [
        "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "+",
        "=", "~", "`", "<", ",", ".", ">", "?", "/", ";", ":", "'", "\"",
        "[", "]", "{", "}", "\\", "|"
    ]

    func isValid(_ username: String) -> Bool {
        if username.count <= 0 || username.count <= 5 || username.count > 9 {
            return false
        }

        for specialCharacter in specialCharaters {
            if username.contains(specialCharacter) {
                return false
            }
        }

        if username.contains(" ") {
            return false
        } else {
            return true
        }


    }
}
