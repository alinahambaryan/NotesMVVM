//
// Created by Alina Hambaryan on 5/4/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import Argo
import RxSwift

enum HTTPMethod: String {
    case Post = "POST"
    case Get = "GET"
    case Delete = "DELETE"
    case Patch = "PATCH"
}

public struct Route {
    let httpMethod : HTTPMethod
    let urlPath : String
    let parameters : [String: AnyObject]
}

public struct Routing {
    let baseUrl: NSString
    let rout : Route
}

/*class BaseWebService <T>:Networking {

    let network: T
    let routing: Routing

    init(network: T, routing: Routing ) {
        self.network = network
        self.routing = routing
    }
}*/
