//
//  SmackUITests.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 1/31/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import XCTest

class SmackUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
 //Check the ChannelLable exists
    func testChannelLable_is_exists(){
        let channelLable = app.staticTexts["Smack"]
        XCTAssert(channelLable.exists)
    }

//Check if the textfield is typeable
    func testTextfild_is_typeable() {
        let messageTextfield = app.textFields["Message:"]
        messageTextfield.tap()
        messageTextfield.typeText("Short text message typing")
        app.buttons["send"].tap()
        
    }
    //Check the Burger Menu is clickable
    func testTapMenuButton_is_clickable() {
        
        let burgerMenu = app.buttons["smackBurger"]
        let loginButton = app.buttons["Login"]
        burgerMenu.tap()
        XCTAssert(loginButton.exists)
    }
    //Check the Login button is clickable
    func testTapLoginButton_is_clickable() {
        
        let burgerMenu = app.buttons["smackBurger"]
        let loginButton = app.buttons["Login"]
        burgerMenu.tap()
        XCTAssert(loginButton.exists)
        loginButton.tap()
        XCTAssert(loginButton.exists)
    }
    
}

