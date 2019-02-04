//
//  Login_logoutTest.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 1/31/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import XCTest

class LoginTest: BaseTest {
    
    
    func testLogin(){
        let burgerMenu = app.buttons["smackBurger"]
        XCTAssert(burgerMenu.exists)
    
        let chatScreen = ChatScreen()
        chatScreen.tapMenuButton()
        if (app.buttons["\(TestUser.user)"].exists) {
            let logOutTest = LogOutTest()
            logOutTest.testLogout()
        }
    if (app.buttons["Login"].exists) {
        let channelScreen = ChannelScreen()
        channelScreen.tapLoginButton()
        
        let loginScreen = LoginScreen()
        loginScreen.login()
        loginScreen.tapLoginButton()
        sleep(3)
        XCTAssert(app.buttons["\(TestUser.user)"].exists)
        
        }
}
}

