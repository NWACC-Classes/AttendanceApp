//
//  EventsViewController.swift
//  AttendanceApop
//
//  Created by Baker, Allen on 3/6/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func NextButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toTabBarController", sender: self)
    }

}
