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
    func testChannelLable(){
        let channelLable = app.staticTexts["Smack"]
        XCTAssert(channelLable.exists)
    }
 //Check the Burger Menu is clickable
    func testTapMenuButton_is_clickable() {
       
        let burgerMenu = app.buttons["smackBurger"]
        let loginButton = app.buttons["Login"]
        burgerMenu.tap()
         XCTAssert(loginButton.exists)
    }
}

