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
        for specialCharacter in specialCharaters {
            if username.contains(specialCharacter) {
                return false
            }
        }

        if username.isEmpty || username.count <= 5 || username.count > 9 {
            return false
        } else if username.contains(" ") {
            return false
        } else if let _ = Int(username) {
            return false
        } else {
            return true
        }
    }
}
