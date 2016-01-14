//
//  LoginPresenter.swift
//  ViperSample
//
//  Created by William Wong on 14/01/2016.
//  Copyright © 2016 biscat. All rights reserved.
//

import Foundation

// encapsulate presentation logic, to format the data for view, localisation and
// delegate task to interactor and receive result.
// responsibilities: event handler, task delegator and data formatter
protocol LoginPreparing {
    func didRequestLogin(username: String, password: String)
    
}

class LoginPresenter: LoginPreparing{
    var loginView: LoginView?
    var loginIntereactor: LoginInteractor?
    
    
    func didRequestLogin(username: String, password: String) {
        if loginIntereactor != nil {
            //task should execute in another thread here
            let result = loginIntereactor?.loginWithUserNameAndPassword(username, password: password)
            if result == true {
                loginView?.showSuccessWithMessage("success") //localisation string
            } else {
                loginView?.showErrorWithMessage("failed") //localisation string
            }
        }
    }
}