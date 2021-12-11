//
//  UserResponse.swift
//  VKNewsFeed
//
//  Created by Геворг on 11.12.2021.
//

import Foundation

struct UserResponseWrapped: Decodable {
    let response: [UserResponse]
}

struct UserResponse: Decodable {
    let photo100: String?
}
