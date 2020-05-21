//
//  LoginPresenter.swift
//  HelloUnitTest
//
//  Created by Olarn U. on 21/5/2563 BE.
//  Copyright © 2563 Olarn U. All rights reserved.
//

import Foundation

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
}
