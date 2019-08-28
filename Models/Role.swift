//
//  Account.swift
//  mezos
//
//  Created by ZiOS on 8/28/19.
//  Copyright © 2019 ZiOS. All rights reserved.
//

import Foundation

class Role: Codable {
    
    var id: Int?
    var roleCode: String
    var roleLabel: String
    
    init(id: Int?, roleCode: String, roleLabel: String) {
        self.id = id
        self.roleCode = roleCode
        self.roleLabel = roleLabel
    }
    

}
