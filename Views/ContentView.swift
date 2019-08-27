//
//  ContentView.swift
//  mezos
//
//  Created by ZiOS on 8/26/19.
//  Copyright © 2019 ZiOS. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    private let authenticationService = AuthenticationService()
    
    var body: some View {
        NavigationView {
            Form{
                Section {
                    Text("Welcome to Mezos Store !").font(.headline)
                }
                Section {
                    TextField("Username", text: $username)
                    SecureField("Password", text: $password).textContentType(.newPassword).autocapitalization(.none)
                }
                Section {
                    Button(action: login) {
                        Text("Login")
                    }
                    VStack{
                        NavigationLink(destination: RegistrationView()) {
                            Button(action: {}) {
                                Text("Create Account")
                            }
                        }
                    }
                    
                }
            }
        }
        
    }
    
    func login() {
        let authReq = AuthRequest(username: username, password: password)
        self.authenticationService.login(req: authReq)
    }
    
    func forwardToCreateAccount(){
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
