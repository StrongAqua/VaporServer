//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

struct CatalogRequest: Content {
    let page_number: String
    let id_category: Int
}

