//
//  ContentView.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appState: AppState
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            DiscoverView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Discover")
                }
                .tag(0)
            
            MyGroupsView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("My Groups")
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
                .tag(2)
        }
        .onAppear {
            if let cognitoSub = appState.cognitoSub {
                fetchUserData(cognitoSub: cognitoSub)
            }
        }
    }

    func fetchUserData(cognitoSub: String) {
        fetchUserProfile(cognitoSub: cognitoSub)
        fetchUserGroups(cognitoSub: cognitoSub)
    }

    func fetchUserProfile(cognitoSub: String) {
        // Simulate fetching user profile information from backend using cognitoSub
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            // Simulate fetching user data
            let user = user_logged_in
//            if let user = user {
                appState.userName = user.username
                appState.bio = user.bio
                appState.interests = user.interests.joined(separator: ", ")
                if let url = URL(string: user.profilePicture) {
                    loadImage(from: url) { image in
                        appState.profilePicture = image
                    }
                }
//            }
        }
    }

    func fetchUserGroups(cognitoSub: String) {
        // Simulate fetching user groups from backend
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            // Simulate fetching user groups
            appState.userGroups = userGroups
        }
    }

    func loadImage(from url: URL, completion: @escaping (Image?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            if let uiImage = UIImage(data: data) {
                completion(Image(uiImage: uiImage))
            } else {
                completion(nil)
            }
        }.resume()
    }

    func checkUserGroups(completion: @escaping (Bool) -> Void) {
        // Check if the user has groups in AppState
        completion(!appState.userGroups.isEmpty)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppState())
    }
}
