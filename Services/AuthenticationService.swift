//
//  AuthenticationService.swift
//  mezos
//
//  Created by ZiOS on 8/27/19.
//  Copyright © 2019 ZiOS. All rights reserved.
//

import Foundation

class AuthenticationService {
    
    func login(req: AuthRequest) {
        let serviceUrl:URL = URL(string: "http://localhost:9901/api/v1/authentication/authenticate")!
        var request = URLRequest(url: serviceUrl)
        request.httpMethod = "POST"
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        
        request.httpBody = try! JSONEncoder().encode(req)
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        
        let session = URLSession(configuration: .ephemeral).dataTask(with: request) {
            (data, response, error) in
            if response != nil {
                if(data != nil) {
                    let token = data!.base64EncodedString()
                    print(token)
                }
            }
        }
        session.resume()
    }
    
}
