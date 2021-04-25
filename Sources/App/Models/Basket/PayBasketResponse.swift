//
//  File.swift
//  
//
//  Created by aprirez on 4/25/21.
//

import Vapor

struct PayBasketResponse: Content {
    let result: Int
    let user_message: String?
    let basket: GetBasketResponse
}
