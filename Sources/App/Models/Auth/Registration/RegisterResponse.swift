//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
