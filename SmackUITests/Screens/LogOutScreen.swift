//
//  LogOutScreen.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 2/1/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import Foundation
import XCTest

class LogOutScreen: BaseScreen {
    
    private let loginButton: XCUIElement = app.buttons["Login"]
    private let menuButton: XCUIElement = app.buttons["smackBurger"]
    private let usernameTextField: XCUIElement = app.textFields["username"]
    private let passwordTextField: XCUIElement = app.secureTextFields["password"]
    private let signUpButton: XCUIElement = app.buttons["Don't have an account? Sign up here"]

    func tapLogOut() {
        
         let chatScreen = ChatScreen()
        chatScreen.tapMenuButton()
        
        let channelScreen = ChannelScreen()
        channelScreen.tapLoginButton()
       // channelScreen.tap(XCUIElement: logoutButton)
        
    }
    
}
