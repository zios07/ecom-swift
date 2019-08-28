//
//  AuthenticationService.swift
//  mezos
//
//  Created by ZiOS on 8/27/19.
//  Copyright © 2019 ZiOS. All rights reserved.
//

import Foundation

class AuthenticationService {
    
    func login(req: Account) {
        let serviceUrl:URL = URL(string: "\(Constants.API_URL)authentication/authenticate")!
        var request = URLRequest(url: serviceUrl)
        request.httpMethod = "POST"
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        
        request.httpBody = try! JSONEncoder().encode(req)
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        
        let session = URLSession(configuration: .ephemeral).dataTask(with: request) {
            (data, response, error) in
            
            if let httpResponse = response as? HTTPURLResponse {
                switch httpResponse.statusCode {
                    case 200:
                        // login success, redirect to home screen
                        print("Logged in")
                        let token = data?.base64EncodedData()
                        
                    case 401:
                        // unauthorized
                        print("Bad creds hon")
                    default:
                        // generic error
                        print("Generic error message")
                }
            }
        }
        session.resume()
    }
    
    func register(user: User) {
        let serviceUrl:URL = URL(string: "\(Constants.API_URL)users/register")!
        var request = URLRequest(url: serviceUrl)
        request.httpMethod = "POST"
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        
        request.httpBody = try! JSONEncoder().encode(user)
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        
        let session = URLSession(configuration: .ephemeral).dataTask(with: request) {
            (data, response, error) in
            if response != nil {
                if(data != nil) {
                    print(data)
                }
            }
        }
        session.resume()
    }
    
}
