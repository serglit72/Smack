//
//  CreateAccountScreen.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 2/2/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import Foundation
import XCTest


class  CreateNewUserScreen: BaseScreen {
    
    private let createAnAccount: XCUIElement = app.staticTexts["Create an account"]
    private let usernameNewTextField: XCUIElement = app.textFields["username"]
    private let passwordNewTextField: XCUIElement = app.secureTextFields["password"]
    private let emailNewTextField: XCUIElement = app.textFields["email"]
    private let chooseAvatar: XCUIElement = app.buttons["Choose avatar"]
    private let backgroundColor: XCUIElement = app.buttons["Generate background color"]
    private let createAccountButton: XCUIElement = app.buttons["Create Account"]
   
   
    
    
    
    func createAccount() {
        
        type(TestUser.user, in:  usernameNewTextField)
        type(TestUser.password, in:  passwordNewTextField)
        type(TestUser.username, in: emailNewTextField)
        
    }
    
    let chooseAvatarScreen = ChooseAvatarScreen()
   
    func tapChooseAvatar() {
        
        tap(chooseAvatar)
        sleep(1)
        chooseAvatarScreen.tapAvatarIcon()
        
    }
    
    func tapChooseAvatarColor() {
        tap(backgroundColor)
        
    }
    
    func tapCreateAccountButton() {
        tap(createAccountButton)
    }
    
}
