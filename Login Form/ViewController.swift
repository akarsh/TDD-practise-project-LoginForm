//
//  ViewController.swift
//  Login Form
//
//  Created by Akarsh Seggemu on 15.04.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func login(username: String, password: String) -> Bool {
        if password == "1@34%67A!" && username == "Murthy" {
            return true
        } else {
            return false
        }
    }
}

