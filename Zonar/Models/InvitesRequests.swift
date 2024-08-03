//
//  InvitesRequests.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import Foundation
import Foundation

struct Invite: Identifiable, Codable {
    let id: String
    let groupId: String
    let inviterId: String
    let inviteeEmail: String
    let status: String
    let createdAt: Date
    let updatedAt: Date

    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case groupId
        case inviterId
        case inviteeEmail
        case status
        case createdAt
        case updatedAt
    }
}

import Foundation

struct Request: Identifiable, Codable {
    let id: String
    let groupId: String
    let requesterId: String
    let status: String
    let createdAt: Date
    let updatedAt: Date

    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case groupId
        case requesterId
        case status
        case createdAt
        case updatedAt
    }
}

import Foundation

struct PrivateLink: Identifiable, Codable {
    let id: String
    let groupId: String
    let link: String
    let expiresAt: Date
    let createdAt: Date
    let updatedAt: Date

    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case groupId
        case link
        case expiresAt
        case createdAt
        case updatedAt
    }
}
