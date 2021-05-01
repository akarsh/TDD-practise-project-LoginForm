//
//  LoginControllerTests.swift
//  Login FormTests
//
//  Created by Christian Slanzi on 16.04.21.
//

import XCTest
@testable import Login_Form

class LoginControllerTests: XCTestCase {
    
    // MARK: Test Data
    let VALID_USERNAME = "Murthy"
    let VALID_PASSWORD = "1@34%67A!"

    let INVALID_USERNAME = "M123"
    let INVALID_PASSWORD = "abc"
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    // MARK: - Helpers
    
    func makeSUT() -> LoginController {
        return LoginController()
    }

}

extension LoginControllerTests {
    func testForValidUsernameAndValidPassword() throws {
        XCTAssertTrue(makeSUT().login(username: VALID_USERNAME, password: VALID_PASSWORD))
    }

    func testForValidUsernameAndInvalidPassword() throws {
        XCTAssertFalse(makeSUT().login(username: VALID_USERNAME, password: INVALID_PASSWORD))
    }

    func testForInvalidUsernameAndValidPassword() throws {
        XCTAssertFalse(makeSUT().login(username: INVALID_USERNAME, password: VALID_PASSWORD))
    }

    func testForInvalidUsernameAndInvalidPassword() throws {
        XCTAssertFalse(makeSUT().login(username: INVALID_USERNAME, password: INVALID_PASSWORD))
    }
}
