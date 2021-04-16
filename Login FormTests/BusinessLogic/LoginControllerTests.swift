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
    let validUsername = "Murthy"
    let validPassword = "1@34%67A!"

    let InvalidUsername = "M123"
    let InvalidPassword = "abc"
    
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
        XCTAssertTrue(makeSUT().login(username: validUsername, password: validPassword))
    }

    func testForValidUsernameAndInvalidPassword() throws {
        XCTAssertFalse(makeSUT().login(username: validUsername, password: InvalidPassword))
    }

    func testForInvalidUsernameAndValidPassword() throws {
        XCTAssertFalse(makeSUT().login(username: InvalidUsername, password: validPassword))
    }

    func testForInvalidUsernameAndInvalidPassword() throws {
        XCTAssertFalse(makeSUT().login(username: InvalidUsername, password: InvalidPassword))
    }
}
