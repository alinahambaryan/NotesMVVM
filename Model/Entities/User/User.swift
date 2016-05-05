//
// Created by Alina Hambaryan on 5/2/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import Argo
import Curry

public struct User: Decodable {

    public let name: String
    public let lastname: String
    public let id: String
    public let email: String
    public let password: String

    public static func decode(json: JSON) -> Decoded<User> {
        let decoded = curry(User.init)

        return decoded
            <^> json <| "name"
            <*> json <| "lastname"
            <*> json <| "id"
            <*> json <| "email"
            <*> json <| "password"
    }
}
