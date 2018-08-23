//
//  ViewController.swift
//  Project1-Login
//
//  Created by Fate on 8/20/18.
//  Copyright © 2018 Fate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mUsernameText:
    UITextField!
    
    @IBOutlet weak var mPassText:
    UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onLoginButton(_ sender: Any) {
        if mUsernameText.text?.uppercased() == "ADMIN" && mPassText.text?.uppercased() == "ADMIN"{
            print("Login success")
        }else{
            print("Login failed")
        }
    }
    
}

