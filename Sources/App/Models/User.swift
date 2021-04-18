//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

struct User: Content {
    let id_user: Int
    let user_login: String
    let user_name: String
    let user_lastname: String
}
