//
//  NoNumberRule.swift
//  Login Form
//
//  Created by Akarsh Seggemu on 15.05.21.
//

class NoNumberRule: ValidationRule {

    private var message: String

    init(message: String) {
        self.message = message
    }

    func validate(value: String) -> Bool {
        return !(Int(value) != nil)
    }

    func errorMessage() -> String {
        return message
    }
}
