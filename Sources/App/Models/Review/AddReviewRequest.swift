//
//  File.swift
//  
//
//  Created by aprirez on 4/21/21.
//

import Vapor

struct AddReviewRequest: Content {
    let id_user: Int
    let text: String
}

