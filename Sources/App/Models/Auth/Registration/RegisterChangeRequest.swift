//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

struct RegisterChangeRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
