//
//  BaseScreen.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 1/31/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import Foundation
import XCTest


class BaseScreen {
    
    static let app = XCUIApplication()
    
    let timeout: TimeInterval = 5
    
    func tap(_ element: XCUIElement) {
        element.tap()
    }
    
    func type(_ text: String, in element: XCUIElement) {
        element.tap()
        element.typeText(text)
    
    }
}
