//
//  Message.swift
//  Chatroom
//
//  Created by Chimwemwe Phikiso on 08/05/2022.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}


