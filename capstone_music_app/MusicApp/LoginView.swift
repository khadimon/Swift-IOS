//
//  LoginView.swift
//  MusicApp
//
//  Created by Khadichabonu Valieva on 18/11/23.
//


import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoginSuccessful = false

    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding()

                Form {
                    Section {
                        TextField("Username", text: $username)
                            .autocapitalization(.none)
                    }

                    Section {
                        SecureField("Password", text: $password)
                    }

                    Section {
                        NavigationLink(destination: ContentView(), isActive: $isLoginSuccessful) {
                            Text("Login")
                        }
                        .disabled(username.isEmpty || password.isEmpty)
                    }
                }
                .padding()
            }
            .navigationBarTitle("Login", displayMode: .inline)
            .padding()
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
