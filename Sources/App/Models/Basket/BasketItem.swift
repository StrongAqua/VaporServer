//
//  File.swift
//  
//
//  Created by aprirez on 4/25/21.
//

import Vapor

struct BasketItem: Content {
    let quantity: Int
    let id_product: Int
    let product_name: String
    let price: Int
}


