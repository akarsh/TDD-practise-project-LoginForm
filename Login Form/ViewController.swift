//
//  ViewController.swift
//  Login Form
//
//  Created by Akarsh Seggemu on 15.04.21.
//

import UIKit

class ViewController: UIViewController {
    
    var loginController: LoginController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func login(username: String, password: String) -> Bool {
        
        guard let loginController = loginController else { return false }
        
        return loginController.login(username: username, password: password)
    }
}

