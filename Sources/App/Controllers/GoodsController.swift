//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

class GoodsController {
    func getProduct(_ req: Request) throws -> EventLoopFuture<ProductResponse> {
        guard let body = try? req.content.decode(ProductRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ProductResponse(
            result: 1,
            product_name: "Name of product",
            product_price: 123,
            product_description: "About the product"
        )
        
        return req.eventLoop.future(response)
    }
    
    func getCatalog(_ req: Request) throws -> EventLoopFuture<CatalogResponse> {
        guard let body = try? req.content.decode(CatalogRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = CatalogResponse(
            page_number: 1,
            products: [
                Product(
                    id_product: 123,
                    product_name: "Ноутбук",
                    price: 45600
                ),
                Product(
                    id_product: 456,
                    product_name: "Мышка",
                    price: 1000
                )
            ]
        )
        
        return req.eventLoop.future(response)
    }
}
