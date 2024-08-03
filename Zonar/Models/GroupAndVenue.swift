//
//  GroupAndVenue.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import Foundation

struct Group: Identifiable, Codable {
    let id: String
    let name: String
    let description: String
    let logoURL: String
    let accessControl: String
    let membersCount: Int
    let venues: [Venue]
    let admin: String
    let adminMessageBoard: [String]
    let createdAt: Date
    let updatedAt: Date

    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case description
        case logoURL
        case accessControl
        case membersCount
        case venues
        case admin
        case adminMessageBoard
        case createdAt
        case updatedAt
    }
}


struct Venue: Identifiable, Codable {
    let id: String
    let name: String
    let location: Location
    let groupId: String
    let createdAt: Date
    let updatedAt: Date

    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case location
        case groupId
        case createdAt
        case updatedAt
    }
}


struct Coordinate: Identifiable, Codable {
    let id = UUID()
    let latitude: Double
    let longitude: Double

    private enum CodingKeys: String, CodingKey {
        case id
        case latitude
        case longitude
    }
}

struct Location: Codable {
    let type: String
    let coordinates: [Coordinate]
    let radius: Double?

    private enum CodingKeys: String, CodingKey {
        case type
        case coordinates
        case radius
    }
}
