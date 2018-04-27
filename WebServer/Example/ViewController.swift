//
//  ViewController.swift
//  Example
//
//  Created by NWACC_MacBookAir_01 on 4/24/18.
//  Copyright © 2018 NWACC_MacBookAir_01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        var _user = User();
            _user.id    = 0
            _user.name  = "Pedro"
            _user.email = "plopes@nwacc.edu"
            _user.phone = "55555555555"
            _user.organization = "Test"
            _user.title = "Mr."
            _user.documentID = 0
        
        if ( sender.title(for: .normal) == "INSERT" ){
            _user.save()
        } else if ( sender.title(for: .normal) == "UPDATE" ){
            _user.update(idName: "id", idValue: "1")
        } else {
            _user.load(idName: "1", idValue: "1")
        }
    }
}
