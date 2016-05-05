//
//  Networking.swift
//  Notes
//
//  Created by Alina Hambaryan on 5/4/16.
//  Copyright © 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import Alamofire
import Argo
import RxSwift

protocol Networking {

    var routing: Routing { get }

 //   var disposeBag: DisposeBag { get }
//    func request<T: Decodable where T == T.DecodedType>(method: Alamofire.Method, urlPath: String, parameters: [String : AnyObject]?) -> Observable<T>
    func request<T: Decodable where T == T.DecodedType>(rout: Route) -> Observable<T>
}