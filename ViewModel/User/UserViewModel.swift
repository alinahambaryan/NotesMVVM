//
//  UserViewModel.swift
//  Notes
//
//  Created by Alina Hambaryan on 5/5/16.
//  Copyright © 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import Model

public protocol UserViewModeling {
    var fullName:String {get}
    var email:String {get}
    var password:String {get}
    var service: UserServicing {get}
}

class UserViewModel : UserViewModeling {

    var fullName : String
    var email : String
    var password : String
    var service: UserServicing

    init (fullName : String, email : String, password:String, service : UserServicing) {

        self.fullName = fullName
        self.email = fullName
        self.password = fullName
        self.service = service
    }

//    func loadUser() -> User{
//       return self.service.read("1")
//    }
}