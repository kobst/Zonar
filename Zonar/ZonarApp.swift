//
//  ZonarApp.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import SwiftUI

@main
struct ZonarApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject private var appState = AppState()

    var body: some Scene {
        WindowGroup {
            if appState.isAuthenticated {
                ContentView()
                    .environmentObject(appState)
            } else {
                LoginView()
                    .environmentObject(appState)
            }
        }
    }
}
