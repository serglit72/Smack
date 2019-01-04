//
//  Constants.swift
//  Smack
//
//  Created by Sergei Litovchenko on 12/28/18.
//  Copyright © 2018 Sergei Litovchenko. All rights reserved.
//

import Foundation

typealias CompleteionHandler = (_ Success : Bool) -> ()

//URL Constants
let BASE_URL = "https://smackchat2019.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//USER Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
