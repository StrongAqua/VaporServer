//
//  File.swift
//  
//
//  Created by aprirez on 4/25/21.
//

import Vapor

struct GetBasketResponse: Content {
    let amount: Int
    let count_goods: Int
    let contents: [BasketItem]
}
