//
//  SampleData.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import Foundation

let dummyGroups: [Group] = [
    Group(
        id: "60d21b4967d0d8992e610c87",
        name: "Group 1",
        description: "This is Group 1",
        logoURL: "",
        accessControl: "public",
        membersCount: 10,
        venues: [venue_1],
        admin: "60d21b4667d0d8992e610c85",
        adminMessageBoard: ["adminMessageBoard1"],
        createdAt: Date(),
        updatedAt: Date()
    ),
    Group(
        id: "60d21b4967d0d8992e610c88",
        name: "Group 2",
        description: "This is Group 2",
        logoURL: "",
        accessControl: "byRequest",
        membersCount: 15,
        venues: [venue_2],
        admin: "60d21b4667d0d8992e610c86",
        adminMessageBoard: ["adminMessageBoard2"],
        createdAt: Date(),
        updatedAt: Date()
    )
]

let venue_1 =  Venue(
    id: "60d21b5167d0d8992e610c8d",
    name: "Venue 1",
    location: Location(
        type: "Point",
        coordinates: [Coordinate(latitude: 42.739655, longitude: -72.990921)],
        radius: nil
    ),
    groupId: "60d21b4967d0d8992e610c87",
    createdAt: Date(),
    updatedAt: Date()
)

let venue_2 = Venue(
    id: "60d21b5167d0d8992e610c8e",
    name: "Venue 2",
    location: Location(
        type: "Point",
        coordinates: [Coordinate(latitude: 40.739655, longitude: -73.990921)],
        radius: nil
    ),
    groupId: "60d21b4967d0d8992e610c88",
    createdAt: Date(),
    updatedAt: Date()
)

let user_1 = User(
    id: "60d21b4667d0d8992e610c85",
    username: "johndoe",
    email: "johndoe@example.com",
    cognitoSub: "abcd1234-ef56-7890-ghij-klmnopqrstuv",
    profilePicture: "https://example.com/profile/johndoe.jpg",
    bio: "I love hiking and outdoor activities.",
    interests: ["hiking", "photography"],
    groups: ["60d21b4967d0d8992e610c87", "60d21b4967d0d8992e610c88"],
    requests: ["60d21b4967d0d8992e610c89"],
    dms: ["60d21b4f67d0d8992e610c8b"]
)

let user_2 = User(
    id: "60d21b4667d0d8992e610c86",
    username: "janedoe",
    email: "janedoe@example.com",
    cognitoSub: "ijkl5678-mnop-9101-qrst-uvwxyzabcd",
    profilePicture: "https://example.com/profile/janedoe.jpg",
    bio: "Avid traveler and foodie.",
    interests: ["travel", "cooking"],
    groups: ["60d21b4967d0d8992e610c87"],
    requests: ["60d21b4967d0d8992e610c88"],
    dms: ["60d21b4f67d0d8992e610c8c"]
)

let user_logged_in = User(
    id: "41a32c4667d0d8992e610c86",
    username: "edwrdhn",
    email: "edwrdhn@gmail.com",
    cognitoSub: "lmnl2319-mnop-9101-qrst-uvwxyafeafe",
    profilePicture: "https://example.com/profile/janedoe.jpg",
    bio: "Avid traveler and foodie.",
    interests: ["travel", "cooking"],
    groups: ["60d21b4967d0d8992e610c87"],
    requests: [],
    dms: []
)


let dummyVenues: [Venue] = [venue_1, venue_2]
