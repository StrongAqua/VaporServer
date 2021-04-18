//
//  File.swift
//  
//
//  Created by aprirez on 4/18/21.
//

import Vapor

struct RegisterChangeResponse: Content {
    var result: Int
    var error_message: String?
}
