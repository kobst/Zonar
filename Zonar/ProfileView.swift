//
//  ProfileView.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            if let profilePicture = appState.profilePicture {
                profilePicture
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 10)
                    .padding()
            } else {
                Button(action: selectProfilePicture) {
                    Text("Select Profile Picture")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }

            TextField("Name", text: $appState.userName)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            TextField("Bio", text: $appState.bio)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            TextField("Interests", text: $appState.interests)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            Button(action: saveProfile) {
                Text("Save Profile")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .onAppear {
            // No need to fetch user profile here, as it is already fetched in ContentView
        }
    }
    
    func selectProfilePicture() {
        // Implement profile picture selection
    }
    
    func saveProfile() {
        // Save profile information to backend
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(AppState())
    }
}
