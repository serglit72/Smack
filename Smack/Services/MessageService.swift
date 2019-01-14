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
                        let id = item ["id"].intValue
                        let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)
                        self.channels.append(channel)
                    }
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
}
