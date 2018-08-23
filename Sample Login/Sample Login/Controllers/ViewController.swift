//
//  ViewController.swift
//  Sample Login
//
//  Created by Fate on 8/22/18.
//  Copyright © 2018 Fate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mUsername: UITextField!
    @IBOutlet weak var mPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        // Do any additional setup after loading the view, typically from a nib.
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Login(_ sender: Any) {
        if(mUsername.text == "admin" && mPassword.text == "1" ){
            //tao storyboard
            let storyBoard = UIStoryboard(name: "Home", bundle: nil)
            //tao man hinh moi
            let afterlogin = storyBoard.instantiateViewController(withIdentifier: "HomeTabbarID")
            //day man hinh ra
            self.present(afterlogin, animated: true, completion: nil)
            
        }else{
           //tao alert
            let alertController = UIAlertController(title: "Error Login", message: "Login Fail", preferredStyle: .alert)
            //cancel error
            alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            //day man hinh ra
            self.present(alertController, animated: true, completion: nil)
        }
    }

}

