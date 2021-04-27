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

    func validate(_ username: String) -> Bool {
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
