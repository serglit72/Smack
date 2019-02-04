//
//  LogOutTest.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 2/1/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import XCTest

class LogOutTest: XCTestCase {
    
    let app = XCUIApplication()
    
    let user = TestUser.user
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        
    }
    //Check  if the user logged in
    func testLogout(){
        if (app.buttons["\(user)"].exists) {
            let channelScreen = ChannelScreen()
            sleep(2)
            channelScreen.taploggedInUserButton()
            
            let logOutScreen = LogOutScreen()
            sleep(2)
            XCTAssert(app.buttons["Logout"].exists)
            logOutScreen.tapLogOut()
            sleep(3)
            XCTAssert(app.buttons["Login"].exists)
        
        }
    }
}
