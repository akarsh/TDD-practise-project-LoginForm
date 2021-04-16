//
//  LoginController.swift
//  Login Form
//
//  Created by Christian Slanzi on 16.04.21.
//

import Foundation

class LoginController {
    func login(username: String, password: String) -> Bool {
        if password == "1@34%67A!" && username == "Murthy" {
            return true
        } else {
            return false
        }
    }
}
