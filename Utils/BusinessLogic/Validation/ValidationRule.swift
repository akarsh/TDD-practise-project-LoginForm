//
//  ValidationRule.swift
//  Login Form
//
//  Created by Christian Slanzi on 01.05.21.
//

public protocol ValidationRule {
    func validate(value: String) -> Bool
    func errorMessage() -> String
}
