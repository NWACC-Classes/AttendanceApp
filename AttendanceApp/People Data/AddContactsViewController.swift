//
//  AddContactsViewController.swift
//  AttendanceApp
//
//  Created by Shayne Gill on 4/18/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import UIKit

class AddContactsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Add Contact";  

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var organizationTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    
    @IBAction func saveAndClose(_ sender: Any) {
        performSegue(withIdentifier: "unwindToContactList", sender: self)
    }
    @IBAction func close(_ sender: Any) {
        performSegue(withIdentifier: "unwindToContactList", sender: self)
    }
    

}
