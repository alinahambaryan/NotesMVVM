//
//  NoteList.swift
//  Notes
//
//  Created by Alina Hambaryan on 5/13/16.
//  Copyright © 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import Argo
import Curry

public struct NoteList: Decodable {

    public let notes:[Note]
    public let responseHttpCode: String

    public static func decode(json: JSON) -> Decoded<NoteList> {
        let decoded = curry(NoteList.init)

        return decoded
            <^> json <|| "list"
            <*> json <|  "responseHttpCode"
    }
}
