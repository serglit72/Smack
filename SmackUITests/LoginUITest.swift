//
//  LoginUITest.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 1/31/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import XCTest

class LoginUITest: XCTestCase {
    
    let app = XCUIApplication()
    
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        
    }
    //Check the ChannelLable exists
    func testLogin(){
        let burgerMenu = app.buttons["smackBurger"]
        XCTAssert(burgerMenu.exists)
    
        let chatScreen = ChatScreen()
        chatScreen.tapMenuButton()
        
    if (app.buttons["Login"].exists) {
        let channelScreen = ChannelScreen()
        channelScreen.tapLoginButton()
        
        let loginScreen = LoginScreen()
        loginScreen.login()
        loginScreen.tapLoginButton()
        sleep(3)
        XCTAssert(app.buttons["User#3"].exists)
        
//        }else{
//         logout()
//        }
}
}
}
