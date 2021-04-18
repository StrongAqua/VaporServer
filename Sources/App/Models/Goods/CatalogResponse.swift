//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

struct CatalogResponse: Content {
    let page_number: Int
    let products: [Product]
}

