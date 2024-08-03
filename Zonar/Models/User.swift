//
//  User.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import Foundation
import Foundation

struct User: Identifiable, Codable {
    let id: String
    let username: String
    let email: String
    let cognitoSub: String
    let profilePicture: String
    let bio: String
    let interests: [String]
    let groups: [String]
    let requests: [String]
    let dms: [String]

    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case username
        case email
        case cognitoSub
        case profilePicture
        case bio
        case interests
        case groups
        case requests
        case dms
    }
}




