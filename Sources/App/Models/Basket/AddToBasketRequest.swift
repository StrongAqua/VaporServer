//
//  File.swift
//  
//
//  Created by aprirez on 4/25/21.
//

import Vapor

struct AddToBasketRequest: Content {
    let id_product: Int
    let quantity: Int
}
