//
//  MaximumLengthRule.swift
//  Login Form
//
//  Created by Akarsh Seggemu on 13.05.21.
//

class MaximumLengthRule: ValidationRule {

    var MAX_LENGTH = 0
    private var message: String

    init(message: String) {
        self.message = message
    }

    func validate(value: String) -> Bool {
        return value.count < MAX_LENGTH
    }

    func errorMessage() -> String {
        return message
    }
}
