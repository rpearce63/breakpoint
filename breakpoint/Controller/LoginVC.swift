//
//  LoginVC.swift
//  breakpoint
//
//  Created by Rick on 4/8/18.
//  Copyright © 2018 Pearce. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: insetTextField!
    @IBOutlet weak var passwordField: insetTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self

        
    }

    @IBAction func signinBtnPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!) { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print("Could not login: \(String(describing: loginError?.localizedDescription))")
                }
            }
            
            AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!) { (success, registrationError) in
                if success {
                    AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, nil) in
                        print("Successfully registered user")
                    })
                } else {
                    print("Registration error: \(String(describing: registrationError?.localizedDescription))")
                }
            }
        }
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension LoginVC: UITextFieldDelegate {}
