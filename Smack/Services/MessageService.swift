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
                if let json = try JSON (data: data).array {
                    for item in json {
                        let name = item ["name"].stringValue
                        let channelDescription = item ["description"].stringValue
                        let id = item ["id"].stringValue
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
    
    func findAllMessagesForChannel(channelID: String, completion: @escaping CompleteionHandler) {
        Alamofire.request("\(URL_GET_MESSAGES)\(channelID)", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON {(response) in
            if response.result.error == nil {
               self.clearMessages()
                guard let data = response.data else {return}
                do {
                if let json = try JSON(data: data).array {
                    for item in json {
                        let messageBody = item["messageBody"].stringValue
                        let channelID = item["channelID"].stringValue
                        let id = item["_id"].stringValue
                        let userName = item["userName"].stringValue
                        let userAvatar = item["userAvatar"].stringValue
                        let userAvatarColor = item["userAvatarColor"].stringValue
                        let timeStamp = item["timeStamp"].stringValue
                        
                        let message = Message (message: messageBody, userName: userName, channelID: channelID, userAvatar: userAvatar, userAvatarColor: userAvatarColor, id: id, timestamp: timeStamp)
                        self.messages.append(message)
                    }
                    print(self.messages)
                    completion(true)
                    }
                }catch{
                    print(error)
                    }
            }else{
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
