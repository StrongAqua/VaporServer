//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

struct Product: Content {
    let id_product: Int
    let product_name: String
    let price: Int
}
