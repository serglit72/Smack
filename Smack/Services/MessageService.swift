//
//  MessageService.swift
//  Smack
//
//  Created by Sergei Litovchenko on 1/13/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class MessageService {
    
    static let instance = MessageService ()
    
    var channels = [Channel]()
    var messages = [Message]()
    var selectedChannel : Channel?
    
    func findAllChannel (completion: @escaping CompleteionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else {return}
                
                //Here is the protocol based solution
//                do {
//                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
//                } catch let error {
//                    debugPrint(error as Any)
//                }
//                print(self.channels)
//
//
                 do {
                if let json = try JSON(data: data).array {
                    for item in json {
                        let name = item ["name"].stringValue
                        let channelDescription = item ["description"].stringValue
                        let id = item ["_id"].stringValue
                        let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)
                        self.channels.append(channel)
                    }
                    NotificationCenter.default.post(name: NOTIF_CHANNELS_LOADED, object: nil)
                    completion(true)
                }
                 }catch {
                    print(error)
                }

//
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
    }
    
    func findAllMessagesForChannel(channelId: String, completion: @escaping CompleteionHandler) {
        Alamofire.request("\(URL_GET_MESSAGES)\(channelId)", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            if response.result.error == nil {
                self.clearMessages()
                guard let data = response.data else {return}
                do {
                if let json = try JSON(data: data).array {
                    for item in json {
                        let id = item["_id"].stringValue
                        let messageBody = item["messageBody"].stringValue
                        let userId = item["userId"].stringValue
                        let channelId = item["channelId"].stringValue
                        let userName = item["userName"].stringValue
                        let userAvatar = item["userAvatar"].stringValue
                        let userAvatarColor = item["userAvatarColor"].stringValue
                        let timeStamp = item["timeStamp"].stringValue
                       
                        let message = Message(id: id, message: messageBody, userId: userId, channelId: channelId, userName: userName, userAvatar: userAvatar, userAvatarColor: userAvatarColor, timeStamp: timeStamp)
                        self.messages.append(message)
                        
                    }
                    print(self.messages)
                    completion(true)
                }
                } catch {}
            } else {
                debugPrint(response.result.error as Any)
                completion(false)
            }
        }
    }
    func clearMessages() {
        messages.removeAll()
    }
    
    func clearChannels() {
        channels.removeAll()
    }
}

//"_id": "5c46cb409f0b1b00284fe072",
//"messageBody": "Hi all",
//"userId": "5c46cb129f0b1b00284fe070",
//"channelId": "5c46cb359f0b1b00284fe071",
//"userName": "Test2",
//"userAvatar": "dark11",
//"userAvatarColor": "[0.4745098039215686, 0.6862745098039216, 0.07450980392156863, 1]",
//"__v": 0,
//"timeStamp": "2019-01-22T07:50:24.247Z"
