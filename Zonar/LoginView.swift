import SwiftUI
import Amplify

struct LoginView: View {
    @EnvironmentObject var appState: AppState
    @State private var username = ""
    @State private var password = ""
    @State private var showingAlert = false
    @State private var alertMessage = ""

    var body: some View {
        NavigationView {
            VStack {
                TextField("Email or Phone Number", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button(action: {
                    login()
                }) {
                    Text("Login")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: RegistrationView()) {
                    Text("Don't have an account? Sign up")
                        .padding()
                }
            }
            .padding()
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Login Failed"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }

    func login() {
        if username.isEmpty || password.isEmpty {
            alertMessage = "Please enter both email/phone and password"
            showingAlert = true
        } else {
            Amplify.Auth.signIn(username: username, password: password) { result in
                switch result {
                case .success:
                    DispatchQueue.main.async {
                        appState.isAuthenticated = true
                        appState.cognitoSub = "lmnl2319-mnop-9101-qrst-uvwxyafeafe"
                        print("Success login, cognitoSub set to: \(appState.cognitoSub ?? "nil")")
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
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(AppState())
    }
}

