//
//  MeVC.swift
//  breakpoint
//
//  Created by Rick on 4/9/18.
//  Copyright © 2018 Pearce. All rights reserved.
//

import UIKit
import Firebase

class MeVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = Auth.auth().currentUser
        emailLbl.text = user?.email

    }

    @IBAction func signOutBtnPressed(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            debugPrint("Successfully logged out user")
            let authVC = storyboard?.instantiateViewController(withIdentifier: "AuthVC") as? AuthVC
            present(authVC!, animated: true, completion: nil)
        } catch {
            debugPrint("Error logging out: \(error.localizedDescription)")
        }
    }
    
}
