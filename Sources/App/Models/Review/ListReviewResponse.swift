//
//  File.swift
//  
//
//  Created by aprirez on 4/21/21.
//

import Vapor

struct ListReviewResponse: Content {
    let page_number: Int
    let listReview: [Review]
}

