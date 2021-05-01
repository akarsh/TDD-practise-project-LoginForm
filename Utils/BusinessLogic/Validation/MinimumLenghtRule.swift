//
//  MinimumLenghtRule.swift
//  Login Form
//
//  Created by Christian Slanzi on 01.05.21.
//

class MinimumLenghtRule: ValidationRule {
    
    var MIN_LENGTH = 0
    private var message: String
    
    init(message: String) {
        self.message = message
    }
    
    func validate(value: String) -> Bool {
        return value.count > MIN_LENGTH
    }
    
    func errorMessage() -> String {
        return message
    }
}
