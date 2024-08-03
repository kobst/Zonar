//
//  SampleData.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import Foundation

let publicGroups: [Group] = [group_3, group_4, group_5, group_6, group_7]
let userGroups: [Group] = [group_1, group_9]


 // GROUPS
let group_1 = Group(
    id: "60d21b4967d0d8992e610c87",
    name: "Group 1",
    description: "This is Group 1",
    logoURL: "",
    accessControl: "public",
    membersCount: 10,
    venues: [venue_1],
    admin: "60d21b4667d0d8992e610c85",
    adminMessageBoard: ["Welcome to Group 1!"],
    createdAt: Date(),
    updatedAt: Date()
)

let group_2 = Group(
    id: "60d21b4967d0d8992e610c88",
    name: "Group 2",
    description: "This is Group 2",
    logoURL: "",
    accessControl: "byRequest",
    membersCount: 15,
    venues: [venue_2],
    admin: "60d21b4667d0d8992e610c86",
    adminMessageBoard: ["Welcome to Group 2!"],
    createdAt: Date(),
    updatedAt: Date()
)

let group_3 = Group(
    id: "60d21b4967d0d8992e610c89",
    name: "Group 3",
    description: "This is Group 3",
    logoURL: "",
    accessControl: "private",
    membersCount: 20,
    venues: [venue_3],
    admin: "60d21b4667d0d8992e610c87",
    adminMessageBoard: ["Welcome to Group 3!"],
    createdAt: Date(),
    updatedAt: Date()
)

let group_4 = Group(
    id: "60d21b4967d0d8992e610c90",
    name: "Group 4",
    description: "This is Group 4",
    logoURL: "",
    accessControl: "public",
    membersCount: 25,
    venues: [venue_4],
    admin: "60d21b4667d0d8992e610c88",
    adminMessageBoard: ["Welcome to Group 4!"],
    createdAt: Date(),
    updatedAt: Date()
)

let group_5 = Group(
    id: "60d21b4967d0d8992e610c91",
    name: "Group 5",
    description: "This is Group 5",
    logoURL: "",
    accessControl: "byRequest",
    membersCount: 30,
    venues: [venue_5],
    admin: "60d21b4667d0d8992e610c89",
    adminMessageBoard: ["Welcome to Group 5!"],
    createdAt: Date(),
    updatedAt: Date()
)

let group_6 = Group(
    id: "60d21b4967d0d8992e610c92",
    name: "Group 6",
    description: "This is Group 6",
    logoURL: "",
    accessControl: "private",
    membersCount: 35,
    venues: [venue_6],
    admin: "60d21b4667d0d8992e610c90",
    adminMessageBoard: ["Welcome to Group 6!"],
    createdAt: Date(),
    updatedAt: Date()
)

let group_7 = Group(
    id: "60d21b4967d0d8992e610c93",
    name: "Group 7",
    description: "This is Group 7",
    logoURL: "",
    accessControl: "public",
    membersCount: 40,
    venues: [venue_7],
    admin: "60d21b4667d0d8992e610c91",
    adminMessageBoard: ["Welcome to Group 7!"],
    createdAt: Date(),
    updatedAt: Date()
)

let group_8 = Group(
    id: "60d21b4967d0d8992e610c94",
    name: "Group 8",
    description: "This is Group 8",
    logoURL: "",
    accessControl: "byRequest",
    membersCount: 45,
    venues: [venue_8],
    admin: "60d21b4667d0d8992e610c92",
    adminMessageBoard: ["Welcome to Group 8!"],
    createdAt: Date(),
    updatedAt: Date()
)

let group_9 = Group(
    id: "60d21b4967d0d8992e610c95",
    name: "Group 9",
    description: "This is Group 9",
    logoURL: "",
    accessControl: "private",
    membersCount: 50,
    venues: [venue_9],
    admin: "60d21b4667d0d8992e610c93",
    adminMessageBoard: ["Welcome to Group 9!"],
    createdAt: Date(),
    updatedAt: Date()
)


//VENUES

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

let venue_3 = Venue(
    id: "60d21b5167d0d8992e610c8f",
    name: "Venue 3",
    location: Location(
        type: "Point",
        coordinates: [Coordinate(latitude: 41.739655, longitude: -73.990921)],
        radius: nil
    ),
    groupId: "60d21b4967d0d8992e610c89",
    createdAt: Date(),
    updatedAt: Date()
)

let venue_4 = Venue(
    id: "60d21b5167d0d8992e610c90",
    name: "Venue 4",
    location: Location(
        type: "Point",
        coordinates: [Coordinate(latitude: 40.739655, longitude: -74.990921)],
        radius: nil
    ),
    groupId: "60d21b4967d0d8992e610c90",
    createdAt: Date(),
    updatedAt: Date()
)

let venue_5 = Venue(
    id: "60d21b5167d0d8992e610c91",
    name: "Venue 5",
    location: Location(
        type: "Point",
        coordinates: [Coordinate(latitude: 39.739655, longitude: -75.990921)],
        radius: nil
    ),
    groupId: "60d21b4967d0d8992e610c91",
    createdAt: Date(),
    updatedAt: Date()
)

let venue_6 = Venue(
    id: "60d21b5167d0d8992e610c92",
    name: "Venue 6",
    location: Location(
        type: "Point",
        coordinates: [Coordinate(latitude: 38.739655, longitude: -76.990921)],
        radius: nil
    ),
    groupId: "60d21b4967d0d8992e610c92",
    createdAt: Date(),
    updatedAt: Date()
)

let venue_7 = Venue(
    id: "60d21b5167d0d8992e610c93",
    name: "Venue 7",
    location: Location(
        type: "Point",
        coordinates: [Coordinate(latitude: 37.739655, longitude: -77.990921)],
        radius: nil
    ),
    groupId: "60d21b4967d0d8992e610c93",
    createdAt: Date(),
    updatedAt: Date()
)

let venue_8 = Venue(
    id: "60d21b5167d0d8992e610c94",
    name: "Venue 8",
    location: Location(
        type: "Point",
        coordinates: [Coordinate(latitude: 36.739655, longitude: -78.990921)],
        radius: nil
    ),
    groupId: "60d21b4967d0d8992e610c94",
    createdAt: Date(),
    updatedAt: Date()
)

let venue_9 = Venue(
    id: "60d21b5167d0d8992e610c95",
    name: "Venue 9",
    location: Location(
        type: "Point",
        coordinates: [Coordinate(latitude: 35.739655, longitude: -79.990921)],
        radius: nil
    ),
    groupId: "60d21b4967d0d8992e610c95",
    createdAt: Date(),
    updatedAt: Date()
)


// USERS

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
