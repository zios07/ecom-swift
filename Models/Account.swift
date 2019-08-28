//
//  Account.swift
//  mezos
//
//  Created by ZiOS on 8/28/19.
//  Copyright © 2019 ZiOS. All rights reserved.
//

import Foundation

class Account: Codable {
    
    var id: Int?
    var username: String
    var password: String
    
    init(id: Int?, username: String, password: String) {
        self.id = id
        self.username = username
        self.password = password
    }

}
