//
//  LoginPresenter.swift
//  HelloUnitTest
//
//  Created by Olarn U. on 21/5/2563 BE.
//  Copyright © 2563 Olarn U. All rights reserved.
//

import Foundation

typealias LoginUIValidationType = (Bool) -> Void

class LoginPresenter {
    
    let api: UserApiProtocol
    
    init(api: UserApiProtocol) {
        self.api = api
    }
    
    func validate(userName: String, andPassword password: String) -> Bool {
        let user = api.getUser()
        return
            userName == user.userName &&
            password == user.password
    }

    func validateButtonState(userName: String, andPassword password: String, validationCallback: LoginUIValidationType) {
        validationCallback(isEmail(userName) && isStrongPassword(password))
    }

    private func isEmail(_ userName: String) -> Bool {
        return userName.count == 3
    }
        
    private func isStrongPassword(_ password: String) -> Bool {
        return password.count == 3
    }
}
