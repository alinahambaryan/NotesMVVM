//
// Created by Alina Hambaryan on 5/2/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import Argo
import Curry

public struct Note: Decodable {

    public let noteId: NSInteger
    public let title: String
    public let subtitle: String
    public let details: String
    public let userId: NSInteger
    public let userFullName: String

    public let createdDate: NSInteger
    public let updatedDate  : NSInteger
    public let publishedDate: NSInteger

    public let isPublic: Bool
    public let tags:[String]
    public let images:[String]

    public static func decode(json: JSON) -> Decoded<Note> {
        let decoded = curry(Note.init)

        return decoded
            <^> json <| "noteId"
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
