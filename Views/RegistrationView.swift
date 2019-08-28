//
//  RegistrationView.swift
//  mezos
//
//  Created by ZiOS on 8/27/19.
//  Copyright © 2019 ZiOS. All rights reserved.
//

import SwiftUI

struct RegistrationView: View {
    
    let authenticationService: AuthenticationService = AuthenticationService()
    
    @State var username: String = ""
    @State var password: String = ""
    @State var passwordConfirmation: String = ""
    @State var email: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""

    var body: some View {
        Form{
            Section {
                Text("Create your account").font(.headline)
            }
            Section {
                TextField("Username", text: $username).autocapitalization(.none)
                SecureField("Password", text: $password).textContentType(.newPassword).autocapitalization(.none)
                SecureField("Confirm password", text: $passwordConfirmation).textContentType(.password).autocapitalization(.none)
            }
            Section {
                TextField("Email", text: $email).textContentType(.emailAddress).autocapitalization(.none)
                TextField("First Name", text: $firstName).textContentType(.givenName)
                TextField("Last Name", text: $lastName).textContentType(.familyName)
            }
            Section {
                    Button(action: createAccount) {
                        Text("Create Account")
                }
            }
        }
        
    }
    
    func createAccount() {
        let user = User(id: nil, firstName: self.firstName, lastName: self.lastName, email: self.email, account: Account(id: nil, username: self.username, password: self.password), role: nil)
        authenticationService.register(user: user)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
