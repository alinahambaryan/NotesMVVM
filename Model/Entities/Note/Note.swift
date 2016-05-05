//
// Created by Alina Hambaryan on 5/2/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import Argo
import Curry

public struct Note: Decodable {

    public let noteId: String
    public let title: String
    public let subtitle: String
    public let details: String
    public let userId: String
    public let userFullName: String

    public let createdDate: String
    public let updatedDate  : String
    public let publishedDate: String

    public let isPublic: Bool
    public let tags:[String]
    public let images:[String]

    public static func decode(json: JSON) -> Decoded<Note> {
        let decoded = curry(Note.init)

        return decoded
            <^> json <| "id"
            <*> json <| "title"
            <*> json <| "subtitle"
            <*> json <| "details"
            <*> json <| "userId"
            <*> json <| "userFullName"

            <*> json <| "createdDate"
            <*> json <| "updatedDate"
            <*> json <| "publishedDate"

            <*> json <| "isPublic"
            <*> json <|| "tags"
            <*> json <|| "images"
    }
}
