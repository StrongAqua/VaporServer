//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

struct LoginResponse: Content {
    let result: Int
    let user: User
}
