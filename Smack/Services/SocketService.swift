//
//  SocketService.swift
//  Smack
//
//  Created by Sergei Litovchenko on 1/13/19.
//  Copyright © 2019 Sergei Litovchenko. All rights reserved.
//

import UIKit
import SocketIO


class SocketService: NSObject {

    static let instance = SocketService()
    
    let manager: SocketManager
    let socket: SocketIOClient
    
    override init() {
        self.manager = SocketManager(socketURL: URL(string: BASE_URL)!)
        self.socket = manager.defaultSocket
        super.init()
    }
    //var socket : SocketIOClient = SocketIOClient(socketURL: URL(string: BASE_URL)!)
    func establishConnection() {
        socket.connect()
    }
    func closeConnection() {
        socket.disconnect()
    }
    
    func addChannel(channelName: String, channelDescription: String, completion: @escaping CompleteionHandler) {
        socket.emit("newChannel", channelName, channelDescription)
        completion(true)
    }
    
    func getChannel(completion: @escaping CompleteionHandler) {
        socket.on("channelCreated") {(dataArray, ack) in
            guard let channelName = dataArray[0] as? String else {return}
            guard let channelDesc = dataArray[1] as? String else {return}
            guard let channelId = dataArray[2] as? String else {return}
            
            let newChannel = Channel(channelTitle: channelName, channelDescription: channelDesc, id: channelId)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
    
    func addMessage(messageBody: String, userId: String, channelId: String, completion: @escaping CompleteionHandler) {
        let user = UserDataService.instance
        socket.emit("newMessage", messageBody, userId, channelId, user.name, user.avatarName, user.avatarColor)
        completion(true)
        
    }
    
    func getChatMessage(completion: @escaping CompleteionHandler) {
        socket.on("messageCreated") { (dataArray, ack) in
            guard let msgBody = dataArray[0] as? String else {return}
            let userId = "" as String
            guard let channelId = dataArray[2] as? String else {return}
            guard let userName = dataArray[3] as? String else {return}
            guard let userAvatar = dataArray[4] as? String else {return}
            guard let userAvatarColor = dataArray[5] as? String else {return}
            guard let id = dataArray[6] as? String else {return}
            guard let timeStamp = dataArray[7] as? String else {return}
            
            if channelId == MessageService.instance.selectedChannel?.id && AuthService.instance.isLoggedIn {
            
                let newMessage = Message(id: id, message: msgBody, userId: userId, channelId:channelId, userName: userName, userAvatar: userAvatar, userAvatarColor: userAvatarColor,  timeStamp: timeStamp)
            
                MessageService.instance.messages.append(newMessage)
            completion(true)
        } else {
            completion(false)
        }
    }
    
}

}
//struct Message {
//    public private(set) var id: String!
//    public private(set) var message: String!
//    public private(set) var userId: String!
//    public private(set) var channelId: String!
//    public private(set) var userName: String!
//    public private(set) var userAvatar: String!
//    public private(set) var userAvatarColor: String!
//    public private(set) var timeStamp: String!
//
// io.emit("messageCreated",  msg.messageBody, msg.userId, msg.channelId, msg.userName, msg.userAvatar, msg.userAvatarColor, msg.id, msg.timeStamp);
//});
