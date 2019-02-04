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
    
    private let yourProfile: XCUIElement = app.staticTexts["Your Profile"]
    private let logoutButton: XCUIElement = app.buttons["Logout"]
    private let closeButton: XCUIElement = app.buttons["closeButton"]
    
    func tapLogOut() {
        tap(logoutButton)
    }
    
}
