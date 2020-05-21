//
//  LoginUnitTests.swift
//  HelloUnitTestTests
//
//  Created by Olarn U. on 21/5/2563 BE.
//  Copyright © 2563 Olarn U. All rights reserved.
//

import Quick
import Nimble
@testable import HelloUnitTest

class FakeUserApi: UserApiProtocol {
    func getUser() -> User {
        return User(userName: "user@email.com", password: "1234")
    }
}

class FakeNotExistUserApi: UserApiProtocol {
    func getUser() -> User {
        return User(userName: "", password: "")
    }
}


class LoginValidationUnitTests: QuickSpec {
    override func spec() {
        describe("Test login") {
            
            it("should login success with username = user@email.com & password = 1234") {
                let loginPresenter = LoginPresenter(api: FakeUserApi())

                let expectedLoginResult = true
                let actualLoginResult = loginPresenter.validate(userName: "user@email.com", andPassword: "1234")

                expect(actualLoginResult).to(equal(expectedLoginResult))
            }
            
            it("should login fail if user not exist username (noone@email.com)") {
                let loginPresenter = LoginPresenter(api: FakeNotExistUserApi())

                let expectedLoginResult = false
                let actualLoginResult = loginPresenter.validate(userName: "noone@email.com", andPassword: "1234")
                
                expect(actualLoginResult).to(equal(expectedLoginResult))
            }
            
            it("should login fail if enter invalid password for username = user@email.com (password = 0000)") {
                let loginPresenter = LoginPresenter(api: FakeUserApi())
                
                let expectedLoginResult = false
                let actualLoginResult = loginPresenter.validate(userName: "user@email.com", andPassword: "0000")

                expect(actualLoginResult).to(equal(expectedLoginResult))
            }
        }
    }
    
}
