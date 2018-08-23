//
//  ViewController.swift
//  Demo_Login
//
//  Created by Fate on 8/21/18.
//  Copyright © 2018 Fate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mUsername: UITextField!
    @IBOutlet weak var mPassword: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        
    }
    
    @IBAction func Login(_ sender: Any) {
        if(mUsername.text?.uppercased() == "ADMIN" && mPassword.text?.uppercased() == "123456")
        {
            print("Login success!")
            let storyboard = UIStoryboard(name: "Home", bundle: nil)
            let yourVC = storyboard.instantiateViewController(withIdentifier: "HomeTabbarID")
            self.present(yourVC, animated: true, completion: nil)
        }
        else
        {
            print("error")
            let alertController = UIAlertController(title: "Error login", message: "Login fail.", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

