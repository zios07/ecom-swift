//
//  ContentView.swift
//  mezos
//
//  Created by ZiOS on 8/26/19.
//  Copyright © 2019 ZiOS. All rights reserved.
//

import SwiftUI
import Combine

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    private let authenticationService = AuthenticationService()
    
    var body: some View {
        NavigationView {
            Form{
                Section {
                    Text("Login").font(.headline)
                }
                Section {
                    TextField("Username", text: $username).autocapitalization(.none)
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
        let authReq = Account(id: nil, username: username, password: password)
        self.authenticationService.login(req: authReq)
    }
    
    func forwardToCreateAccount(){
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
