//
//  LoginView.swift
//  ViperSample
//
//  Created by William Wong on 14/01/2016.
//  Copyright © 2016 biscat. All rights reserved.
//

import Foundation

// the view is an abstract interface, define with a protocol in iOS.
// a view controller, or one of its subclasses, will implement the view protocol
// responsibilities: display information to the user, detectuser interaction
protocol LoginView {
    func setUserName(username: String)
    func setPassword(password: String)
    func setLoginEnabled(enabled: Bool)
    func setLoginState(logined: Bool)
}