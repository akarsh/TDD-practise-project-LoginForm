//
//  Login_FormTests.swift
//  Login FormTests
//
//  Created by Akarsh Seggemu on 15.04.21.
//

import XCTest
@testable import Login_Form

class Login_FormTests: XCTestCase {
    
    // MARK: Test Data
    let validUsername = "Murthy"
    let validPassword = "1@34%67A!"

    let InvalidUsername = "M123"
    let InvalidPassword = "abc"
    
    var sut = Login_Form.ViewController()

    
    override class func setUp() {
        super.setUp()
    }

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
    
    func testForValidUsernameAndValidPassword() throws {
        XCTAssertTrue(sut.login(username: validUsername, password: validPassword))
    }

    func testForValidUsernameAndInvalidPassword() throws {
        XCTAssertFalse(sut.login(username: validUsername, password: InvalidPassword))
    }

    func testForInvalidUsernameAndValidPassword() throws {
        XCTAssertFalse(sut.login(username: InvalidUsername, password: validPassword))
    }

    func testForInvalidUsernameAndInvalidPassword() throws {
        XCTAssertFalse(sut.login(username: InvalidUsername, password: InvalidPassword))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
