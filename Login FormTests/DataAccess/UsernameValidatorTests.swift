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
    var usernameWithWhiteSpace = "a a"
    var usernameWithWhiteSpaces = "hello yes i am"
    var usernameWithOnlyWhitespace = " "

    // Special Charaters
    var usernameWithOnlySpecialCharacter = "!"
    var usernameWithSpecialCharacter = "a@"
    var usernameWithSpecialCharacters = "yesIam$tayingHer#"

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
    func testValidate_InputUsernameWithWhitespaces_ReturnsFalse() {
        XCTAssertFalse(makeSUT().validate(usernameWithOnlyWhitespace))
        XCTAssertFalse(makeSUT().validate(usernameWithWhiteSpace))
        XCTAssertFalse(makeSUT().validate(usernameWithWhiteSpaces))
    }

    func testUsername_InputUsernameWithSpecialCharacters_ReturnsFalse() {
        XCTAssertFalse(makeSUT().validate(usernameWithOnlySpecialCharacter))
        XCTAssertFalse(makeSUT().validate(usernameWithSpecialCharacter))
        XCTAssertFalse(makeSUT().validate(usernameWithSpecialCharacters))
    }

    
}
