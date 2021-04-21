//
//  File.swift
//  
//
//  Created by aprirez on 4/21/21.
//

import Vapor

struct AddReviewResponse: Content {
    let result: Int
    let user_message: String
}
