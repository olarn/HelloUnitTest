//
//  UserApi.swift
//  HelloUnitTest
//
//  Created by Olarn U. on 21/5/2563 BE.
//  Copyright © 2563 Olarn U. All rights reserved.
//

import Foundation

class UserApi: UserApiProtocol {
    
    func getUser() -> User {
        return User(userName: "", password: "")
    }
    
}
