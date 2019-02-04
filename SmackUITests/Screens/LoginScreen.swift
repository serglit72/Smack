//
//  LoginScreen.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 2/1/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import Foundation
import XCTest


class LoginScreen : BaseScreen {
    
   
    private let loginButton: XCUIElement = app.buttons["Login"]
    private let usernameTextField: XCUIElement = app.textFields["username"]
    private let passwordTextField: XCUIElement = app.secureTextFields["password"]
    private let signUpButton: XCUIElement = app.buttons["Don't have an account? Sign up here"]

    func tapSignUpButton() {
        tap(signUpButton)
}
    func tapLoginButton() {
        tap(loginButton)
}

    func login() {
        
        type(TestUser.username, in: usernameTextField)
        type(TestUser.password, in: passwordTextField)
        
    }    
    
    }

//extension LoginScreen {
//     private func visible() {
//        let user = TestUser.user
//        let loginButton: XCUIElement = BaseScreen.app.buttons[user]
//        XCTAssertTrue(loginButton.waitForExistence(timeout: timeout), "The user does not exist")
//    }
//}
