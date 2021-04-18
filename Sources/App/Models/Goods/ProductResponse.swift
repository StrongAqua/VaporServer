//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

struct ProductResponse: Content {
    let result: Int
    let product_name: String
    let product_price: Int
    let product_description: String
}

