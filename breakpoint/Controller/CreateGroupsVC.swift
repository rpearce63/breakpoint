//
//  CreateGroupsVC.swift
//  breakpoint
//
//  Created by Rick on 4/9/18.
//  Copyright © 2018 Pearce. All rights reserved.
//

import UIKit

class CreateGroupsVC: UIViewController {

    @IBOutlet weak var titleTextField: insetTextField!
    @IBOutlet weak var descriptionTextField: insetTextField!
    @IBOutlet weak var emailSearchTextField: insetTextField!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupMemberLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func doneBtnPressed(_ sender: Any) {
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
    }
}
