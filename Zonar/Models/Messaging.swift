//
//  Messaging.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import Foundation

struct Conversation: Identifiable, Codable {
    let id: String
    let participants: [String]
    let messages: [String]
    let createdAt: Date
    let updatedAt: Date

    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case participants
        case messages
        case createdAt
        case updatedAt
    }
}


import Foundation

struct Message: Identifiable, Codable {
    let id: String
    let conversationId: String
    let senderId: String
    let message: String
    let createdAt: Date

    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case conversationId
        case senderId
        case message
        case createdAt
    }
}
