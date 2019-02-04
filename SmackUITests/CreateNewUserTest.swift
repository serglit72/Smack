//
//  CreateNewUserTest.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 2/1/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import Foundation
import XCTest

class CreateNewUserTest: BaseTest {
    
    let username = TestUser.username
    let user = TestUser.user
    
    func testNewUserCreate() {
        let chatScreen = ChatScreen()
        if (app.buttons["send"].exists) {
        chatScreen.tapMenuButton()
        sleep(3)
        }
        if (app.buttons["Login"].exists) {
            let channelScreen = ChannelScreen()
            let createAnAccountTitle = app.staticTexts["Create an account"]
            channelScreen.tapLoginButton()
            let loginScreen = LoginScreen()
            loginScreen.tapSignUpButton()
            XCTAssert(createAnAccountTitle.exists)
            let newUserCreateScreen = CreateNewUserScreen()
            
            //Filling up username and password
            newUserCreateScreen.createAccount()
            XCTAssertEqual(username, TestUser.username)

            let createAccountButton = app.buttons["Create Account"]
            
            newUserCreateScreen.tapChooseAvatar()
            newUserCreateScreen.tapChooseAvatarColor()
            sleep(1)
            //Change a  background color
            newUserCreateScreen.tapChooseAvatarColor()
            sleep(1)
            XCTAssert(createAccountButton.exists)
            newUserCreateScreen.tapCreateAccountButton()
            sleep(3)
            let title = app.buttons["\(user)"].label
            XCTAssertEqual(title, TestUser.user)
            
        }else {
            let logOutTest = LogOutTest()
            logOutTest.testLogout()
        }
    }
    
}

