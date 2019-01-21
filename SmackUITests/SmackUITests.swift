//
//  SmackUITests.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 12/24/18.
//  Copyright © 2018 Sergei Litovchenko. All rights reserved.
//

import XCTest

class SmackUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
       // XCUIApplication().launch()
       
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    

    override func tearDown() {
         app = nil
         super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testIsUserloggedIn(){
        app.buttons["Login"].tap()
        XCTAssertTrue(app.buttons.containing(label: , identifier: <#T##String?#>)["Login"])
    }
    
}
