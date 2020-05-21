//
//  LoginUnitTests.swift
//  HelloUnitTestTests
//
//  Created by Olarn U. on 21/5/2563 BE.
//  Copyright © 2563 Olarn U. All rights reserved.
//

import Quick
import Nimble

class LoginUnitTests: QuickSpec {
    override func spec() {
        describe("Test login") {
            
            it("should login success with username = user@email.com & password = 1234") {
                expect(true).to(equal(false))
            }
            
            it("should login fail if use not exist username (noone@email.com)") {
                expect(true).to(equal(false))
            }
            
            it("should login fail if enter invalid password for username = user@email.com (password = 0000)") {
                expect(true).to(equal(false))
            }
        }
    }
    
}
