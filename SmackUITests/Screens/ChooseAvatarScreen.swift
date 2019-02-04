//
//  ChooseAvatarScreen.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 2/3/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import Foundation
import XCTest


class  ChooseAvatarScreen: BaseScreen {
    
   let chooseAvatar: XCUIElement = app.collectionViews.cells.otherElements.containing(.image, identifier:"dark13").element
    
    func tapAvatarIcon() {
        tap(chooseAvatar)
    }
    
}
