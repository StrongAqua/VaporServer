//
//  File.swift
//  
//
//  Created by aprirez on 4/20/21.
//

import Vapor

struct Review: Content {
    let id_comment: Int
    let id_user: Int
    let id_product: Int
    let text: String
    let user_name: String
 }
