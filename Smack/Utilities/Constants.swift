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
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"
let URL_USER_BY_EMAIL = "\(BASE_URL)user/byEmail/"
let URL_GET_CHANNELS = "\(BASE_URL)channel/"



//Colors
let smackPurplePlaceholder = #colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 0.603702911)

//Notification Constants
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")
//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

//USER Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Headers

let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
let BEARER_HEADER = [
    "Authorization":"Bearer \(AuthService.instance.authToken)",
    "Content-Type": "application/json; charset=utf-8"
]
