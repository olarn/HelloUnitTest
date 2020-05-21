//
//  LoginUIValidationUnitTests.swift
//  HelloUnitTestTests
//
//  Created by Olarn U. on 21/5/2563 BE.
//  Copyright © 2563 Olarn U. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import HelloUnitTest

class LoginUIValidationTests: QuickSpec {

    override func spec() {
        describe("Test Login UI Validation Fields") {
            it("enter valid email with strong password button login should enabled") {
                
                let loginPresenter = LoginPresenter(api: FakeUserApi())
                let expectedButtonState = true
                
                loginPresenter.validateButtonState(userName: "use", andPassword: "Pas") { state in
                    expect(state).to(equal(expectedButtonState))
                }
            }
        }
    }
}
