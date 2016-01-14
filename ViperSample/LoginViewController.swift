//
//  LoginViewController.swift
//  ViperSample
//
//  Created by William Wong on 14/01/2016.
//  Copyright © 2016 biscat. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var alreadyLogined: Bool = false

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
}

extension LoginViewController: LoginView {
    func setUserName(username: String) {
        self.usernameField.text = username
    }
    
    func setPassword(password: String) {
        self.passwordField.text = password
    }
    
    func setLoginEnabled(enabled: Bool) {
        
    }
    
    func setLoginState(logined: Bool) {
        alreadyLogined = logined
    }
}
