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
        return UsernameValidator()
    }
}

extension UsernameValidatorTests {
    func testUsernameValidator_InputUsernameWithWhitespaces_ReturnsFalse() {
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_ONLY_WHITESPACE))
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_WHITESPACE))
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_WHITESPACES))
    }

    func testUsernameValidator_InputUsernameWithSpecialCharacters_ReturnsFalse() {
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_ONLY_SPECIAL_CHARACTER))
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_SPECIAL_CHARACTER))
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_SPECIAL_CHARACTERS))
    }

    func testUsernameValidator_InputUsernameWithLessLength_ReturnsFalse() {
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_NO_CHARACTER))
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_ONE_CHARACTER))
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_TWO_CHARACTERS))
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_THREE_CHARACTERS))
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_FIVE_CHARACTERS))
        XCTAssertFalse(makeSUT().isValid(USERNAME_WITH_TEN_CHARACTERS))
    }
}
