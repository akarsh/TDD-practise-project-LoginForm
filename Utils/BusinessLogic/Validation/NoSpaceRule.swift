//
//  SpaceRule.swift
//  Login Form
//
//  Created by Akarsh Seggemu on 14.05.21.
//

class NoSpaceRule: ValidationRule {

    private let space = ""
    private var message: String

    init(message: String) {
        self.message = message
    }

    func validate(value: String) -> Bool {
        return !value.contains(space)
    }

    func errorMessage() -> String {
        return message
    }


}
