//
//  ChannelScreen.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 2/1/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import Foundation
import XCTest

class ChannelScreen: BaseScreen{
    
    
    
    private let loginButton: XCUIElement = app.buttons["Login"]
    public let loggedInUserButton: XCUIElement = app.buttons["\(TestUser.user)"]
    private let addChannelButton: XCUIElement = app.buttons["addChannelButton"]
    
    
    func tapAddChannelButton() {
        tap(addChannelButton)
    }
    func tapLoginButton() {
        tap(loginButton)
    }
    func taploggedInUserButton() {
        tap(loggedInUserButton)
    }
    
}
