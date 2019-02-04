//
//  BaseTest.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 2/4/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import Foundation
import XCTest

class BaseTest: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
}
