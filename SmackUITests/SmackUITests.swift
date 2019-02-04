//
//  SmackUITests.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 1/31/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import XCTest

class MessageTextFieldTests: BaseTest {

  
//Check if the textfield is typeable
    func testTextfild_is_typeable() {
        let messageTextfield = app.textFields["Message:"]
        messageTextfield.tap()
        messageTextfield.typeText("Short text message typing")
        app.buttons["send"].tap()
        
    }
}

