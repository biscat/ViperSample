//
//  LoginInteractor.swift
//  ViperSample
//
//  Created by William Wong on 14/01/2016.
//  Copyright © 2016 biscat. All rights reserved.
//

import Foundation

// encapsulate all business logic and datasource access
// only guy that knows Model Entity and data layer
protocol LoginBusiness {
    func loginWithUserNameAndPassword(username: String, password: String) -> Bool!  //this guy should have a callback
}

class LoginInteractor: LoginBusiness {
    func loginWithUserNameAndPassword(username: String, password: String) -> Bool! {
        return true
    }
}