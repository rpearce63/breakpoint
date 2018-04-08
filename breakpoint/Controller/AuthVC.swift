//
//  AuthVC.swift
//  breakpoint
//
//  Created by Rick on 4/8/18.
//  Copyright © 2018 Pearce. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signInWithEmailBtnPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func googleSigninBtnPressed(_ sender: Any) {
    }
    
    @IBAction func facebookSigninBtnPressed(_ sender: Any) {
    }
    
    
}
