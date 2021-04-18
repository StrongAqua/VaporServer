//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

class AuthController {
    
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RegisterResponse(
            result: 1,
            user_message: "Регистрация прошла успешно!",
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func registerChange(_ req: Request) throws -> EventLoopFuture<RegisterChangeResponse> {
        guard let body = try? req.content.decode(RegisterChangeRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RegisterChangeResponse(
            result: 1,
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }

    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LoginResponse(
            result: 1,
            user: User(
                id_user: 123,
                user_login: "geekbrains",
                user_name: "John",
                user_lastname: "Doe"
            )
        )
        
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LogoutResponse(
            result: 1
        )
        
        return req.eventLoop.future(response)
    }
    
}
