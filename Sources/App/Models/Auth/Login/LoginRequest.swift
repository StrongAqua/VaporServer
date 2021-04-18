//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

struct LoginRequest: Content {
    let username: String
    let password: String
}
