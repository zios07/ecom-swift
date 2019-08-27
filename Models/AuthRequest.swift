//
//  AuthRequest.swift
//  mezos
//
//  Created by ZiOS on 8/26/19.
//  Copyright © 2019 ZiOS. All rights reserved.
//

import Foundation

final class AuthRequest: Codable {
    
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
}
