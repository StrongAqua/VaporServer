//
//  File.swift
//  
//
//  Created by aprirez on 4/25/21.
//

import Vapor

class BasketController {
    func getBasket(_ req: Request) throws -> EventLoopFuture<GetBasketResponse> {
        guard let body = try? req.content.decode(GetBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = GetBasketResponse(
            amount: 133,
            count_goods: 2,
            contents: [
                BasketItem(
                    quantity: 1,
                    id_product: 234,
                    product_name: "Мышка",
                    price: 3500
                ),
                BasketItem(
                    quantity: 1,
                    id_product: 121,
                    product_name: "Ноутбук",
                    price: 89900
                )
            ]
        )
        
        return req.eventLoop.future(response)
    }
    
    func addToBasket(_ req: Request) throws -> EventLoopFuture<AddToBasketResponse> {
        guard let body = try? req.content.decode(AddToBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = AddToBasketResponse(
            result: 1
        )
        
        return req.eventLoop.future(response)
    }
    
    func removeFromBasket(_ req: Request) throws -> EventLoopFuture<RemoveFromBasketResponse> {
        guard let body = try? req.content.decode(RemoveFromBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RemoveFromBasketResponse(
            result: 1
        )
        
        return req.eventLoop.future(response)
    }
    
    func payBasket(_ req: Request) throws -> EventLoopFuture<PayBasketResponse> {
        let response = PayBasketResponse(
            result: 1,
            user_message: "Оплата прошла успешно!",
            basket: GetBasketResponse(amount: 0, count_goods: 0, contents: [])
        )
        
        return req.eventLoop.future(response)
    }
}

