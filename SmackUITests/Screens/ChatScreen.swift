//
// ChatScreen.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 1/31/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//
import Foundation
import XCTest

class ChatScreen: BaseScreen {
    
    private let title: XCUIElement = app.staticTexts["Smack"]
    private let menuButton: XCUIElement = app.buttons["smackBurger"]
    private let messageTextField:  XCUIElement = app.buttons["Message:"]
    private let sendButton: XCUIElement = app.buttons["send"]
    
    func tapMenuButton() {
        tap(menuButton)
    }
    func tapMessage() {
        tap(messageTextField)
    }
    func tapSendMessage() {
        tap(sendButton)
    }
}
