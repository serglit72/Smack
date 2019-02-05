//
//  CreateNewChannelTest.swift
//  SmackUITests
//
//  Created by Sergei Litovchenko on 2/1/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import Foundation
import XCTest

class CreateNewChannelTest: BaseTest {
    
    func testCreateNewChannel() {
        
        let channelScreen = ChannelScreen()
        let chatScreen = ChatScreen()
        chatScreen.tapMenuButton()
        
        if (app.buttons["addChannelButton"].exists) {
            channelScreen.tapAddChannelButton()
            sleep(3)
        }
    }
    }

