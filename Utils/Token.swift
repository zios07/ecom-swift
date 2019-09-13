//
//  Token.swift
//  mezos
//
//  Created by ZiOS on 9/12/19.
//  Copyright © 2019 ZiOS. All rights reserved.
//

import Foundation

class Token {
    
    static let shared = Token(token: nil)
    
    let token: String?
    
    init(token: String?) {
        self.token = token
    }
    
}
