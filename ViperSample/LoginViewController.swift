//
//  LoginViewController.swift
//  ViperSample
//
//  Created by William Wong on 14/01/2016.
//  Copyright © 2016 biscat. All rights reserved.
//

import UIKit

// the view is an abstract interface, define with a protocol in iOS.
// a view controller, or one of its subclasses, will implement the view protocol
// responsibilities: display information to the user, detectuser interaction
protocol LoginView {
    func setUserName(username: String)
    func setPassword(password: String)
    func setLoginEnabled(enabled: Bool)
    func setLoginState(logined: Bool)
    
    func showSuccessWithMessage(message: String)
    func showErrorWithMessage(message: String)
    func showInProgressWithMessage(message: String)
}

class LoginViewController: UIViewController {
    var alreadyLogined: Bool = false
    
    var loginPresenter: LoginPreparing?
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    

    @IBAction func loginAction(sender: AnyObject) {
        if loginPresenter != nil {
            loginPresenter?.didRequestLogin(usernameField.text!, password: passwordField.text!)
        }
    }
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
    
    func showSuccessWithMessage(message: String) {
        
    }
    
    func showInProgressWithMessage(message: String) {
        
    }
    
    func showErrorWithMessage(message: String) {
        
    }
}
