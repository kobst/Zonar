//
//  Registration.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import Foundation
import SwiftUI
import Amplify
import SwiftUI
import Amplify

struct RegistrationView: View {
    @EnvironmentObject var appState: AppState
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var showingAlert = false
    @State private var alertMessage = ""

    var body: some View {
        VStack {
            TextField("Email or Phone Number", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                register()
            }) {
                Text("Register")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Registration Failed"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }

    func register() {
        if password != confirmPassword {
            alertMessage = "Passwords do not match"
            showingAlert = true
            return
        }

        Amplify.Auth.signUp(username: username, password: password) { result in
            switch result {
            case .success:
                DispatchQueue.main.async {
                    appState.isAuthenticated = true
                    appState.cognitoSub = "lmnl2319-mnop-9101-qrst-uvwxyafeafe" // Simulate setting cognitoSub
                    print("Registration successful, cognitoSub set to: \(appState.cognitoSub ?? "nil")")
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    alertMessage = error.errorDescription
                    showingAlert = true
                }
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
            .environmentObject(AppState())
    }
}
