//
//  ViewController.swift
//  HelloUnitTest
//
//  Created by Olarn U. on 21/5/2563 BE.
//  Copyright © 2563 Olarn U. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let presenter = LoginPresenter(api: UserApi())
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        
    }
}

