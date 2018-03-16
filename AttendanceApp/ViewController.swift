//
//  ViewController.swift
//  AttendanceApop
//
//  Created by Baker, Allen on 2/13/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
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

    @IBAction func SetupTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toMain", sender: self)
    }
}

