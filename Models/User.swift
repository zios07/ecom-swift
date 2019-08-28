//
//  User.swift
//  mezos
//
//  Created by ZiOS on 8/28/19.
//  Copyright © 2019 ZiOS. All rights reserved.
//

import Foundation

class User: Codable {
    
    var id: Int?
    var firstName: String
    var lastName: String
    var email: String
    var account: Account
    var role: Role?
    
    init(id: Int?, firstName: String, lastName: String, email: String, account: Account, role: Role?) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.account = account
        self.role = role
    }
}
