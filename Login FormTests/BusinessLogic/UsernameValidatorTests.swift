//
//  UsernameValidatorTests.swift
//  Login FormTests
//
//  Created by Akarsh Seggemu on 27.04.21.
//

import XCTest
@testable import Login_Form

class UsernameValidatorTests: XCTestCase {

    // MARK: TestData

    // Whitespaces
    let USERNAME_WITH_WHITESPACE = "a a"
    let USERNAME_WITH_WHITESPACES = "hello yes i am"
    let USERNAME_WITH_ONLY_WHITESPACE = " "

    // Special Charaters
    let USERNAME_WITH_ONLY_SPECIAL_CHARACTER = "!"
    let USERNAME_WITH_SPECIAL_CHARACTER = "a@"
    let USERNAME_WITH_SPECIAL_CHARACTERS = "yesIam$tayingHer#"

    // Length
    let USERNAME_WITH_NO_CHARACTER = ""
    let USERNAME_WITH_ONE_CHARACTER = "A"
    let USERNAME_WITH_TWO_CHARACTERS = "AA"
    let USERNAME_WITH_THREE_CHARACTERS = "AAA"
    let USERNAME_WITH_FOUR_CHARACTERS = "AAAA"
    let USERNAME_WITH_FIVE_CHARACTERS = "AAAAA"
    let USERNAME_WITH_TEN_CHARACTERS = "AAAAAAAAAA"

    // Numbers
    let USERNAME_WITH_ONLY_NUMBER = "1"
    let USERNAME_WITH_ONLY_NUMBERS = "1234567"

    // Sample data
    let USERNAME_WITH_LOWER_CASE_ALPHABETS = "helloyou"
    let USERNAME_WITH_LOWER_CASE_ALPHABETS_AND_NUMBERS = "hello123"
    let USERNAME_WITH_UPPER_CASE_ALPHABETS = "HELLOYOU"
    let USERNAME_WITH_UPPER_CASE_ALPHABETS_AND_NUMBERS = "HELLO123"
    let USERNAME_WITH_LOWER_CASE_AND_UPPER_CASE_ALPHABETS = "HELLOyou"
    let USERNAME_WITH_LOWER_AND_UPPER_CASE_ALPHABETS_AND_NUMBERS = "heLLo123"

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of
        // each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of
        // each test method in the class.
    }

    // Mark: Helpers

    func makeSUT() -> UsernameValidator {
        let validator = UsernameValidator()

        let minLenghtRule = MinimumLenghtRule(message: "username too short")
        minLenghtRule.MIN_LENGTH = 5
        validator.rules.append(minLenghtRule)

        let maxLengthRule = MaximumLengthRule(message: "username too long")
        maxLengthRule.MAX_LENGTH = 9
        validator.rules.append(maxLengthRule)

        return validator
    }
}

extension UsernameValidatorTests {
    func testUsernameValidator_InputUsernameWithWhitespaces_ReturnsFalse() {
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_ONLY_WHITESPACE))
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_WHITESPACE))
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_WHITESPACES))
    }

    func testUsernameValidator_InputUsernameWithSpecialCharacters_ReturnsFalse() {
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_ONLY_SPECIAL_CHARACTER))
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_SPECIAL_CHARACTER))
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_SPECIAL_CHARACTERS))
    }

    func testUsernameValidator_InputUsernameWithLessLength_ReturnsFalse() {
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_NO_CHARACTER))
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_ONE_CHARACTER))
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_TWO_CHARACTERS))
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_THREE_CHARACTERS))
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_FIVE_CHARACTERS))
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_TEN_CHARACTERS))
    }

    func testUsernameValidator_InputUsernameWithNumbers_ReturnsFalse() {
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_ONLY_NUMBER))
        XCTAssertFalse(makeSUT().validate(USERNAME_WITH_ONLY_NUMBERS))
    }

    func testUsernameValidator_InputUsernameWithAlpabetsAndNumbers_ReturnsTrue() {
        XCTAssertTrue(makeSUT().validate(USERNAME_WITH_LOWER_CASE_ALPHABETS))
        XCTAssertTrue(makeSUT().validate(USERNAME_WITH_LOWER_CASE_ALPHABETS_AND_NUMBERS))
        XCTAssertTrue(makeSUT().validate(USERNAME_WITH_UPPER_CASE_ALPHABETS))
        XCTAssertTrue(makeSUT().validate(USERNAME_WITH_UPPER_CASE_ALPHABETS_AND_NUMBERS))
        XCTAssertTrue(makeSUT().validate(USERNAME_WITH_LOWER_CASE_AND_UPPER_CASE_ALPHABETS))
        XCTAssertTrue(makeSUT().validate(USERNAME_WITH_LOWER_AND_UPPER_CASE_ALPHABETS_AND_NUMBERS))
    }
}
