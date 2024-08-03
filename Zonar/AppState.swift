//
//  AppState.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import Foundation
import SwiftUI
import Combine

class AppState: ObservableObject {
    @Published var isAuthenticated: Bool = false
    @Published var cognitoSub: String?
    @Published var userName: String = ""
    @Published var bio: String = ""
    @Published var interests: String = ""
    @Published var profilePicture: Image? = nil
//    @Published var userGroups: [Group] = []  // User's groups

    // Add other shared variables here
}
