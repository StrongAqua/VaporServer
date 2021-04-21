//
//  File.swift
//  
//
//  Created by aprirez on 4/21/21.
//

import Vapor

struct ListReviewRequest: Content {
    let page_number: Int
    let id_product: Int
}

