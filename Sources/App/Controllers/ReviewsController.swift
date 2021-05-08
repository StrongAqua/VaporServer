//
//  File.swift
//  
//
//  Created by aprirez on 4/21/21.
//

import Vapor

class ReviewsController {
    func addReview(_ req: Request) throws -> EventLoopFuture<AddReviewResponse> {
        guard let body = try? req.content.decode(AddReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = AddReviewResponse(
            result: 1,
            user_message: "Ваш отзыв был передан на модерацию"
        )
        
        return req.eventLoop.future(response)
    }
    
    func approveReview(_ req: Request) throws -> EventLoopFuture<ApproveReviewResponse> {
        guard let body = try? req.content.decode(ApproveReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ApproveReviewResponse(
            result: 1
        )
        
        return req.eventLoop.future(response)
    }
    
    func removeReview(_ req: Request) throws -> EventLoopFuture<RemoveReviewResponse> {
        guard let body = try? req.content.decode(RemoveReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RemoveReviewResponse(
            result: 1
        )
        
        return req.eventLoop.future(response)
    }
    
    func getListReview(_ req: Request) throws -> EventLoopFuture<ListReviewResponse> {
        guard let body = try? req.content.decode(ListReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ListReviewResponse(
            page_number: 1,
            listReview: [
                Review(
                    id_comment: 123,
                    id_user: 12,
                    id_product: 345,
                    text: "Well",
                    user_name: "Alice Smith"
                ),
                Review(
                    id_comment: 124,
                    id_user: 10,
                    id_product: 345,
                    text: "Funny",
                    user_name: "Bob Doe"
                )
            ]
        )
        
        return req.eventLoop.future(response)
    }
}

