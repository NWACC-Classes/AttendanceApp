//
//  EventDetailViewController.swift
//  AttendanceApp
//
//  Created by Edith Avalos on 5/2/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var EventDetailsLabel: UILabel!
    @IBOutlet weak var EventDetailsTextView: UITextView!
    @IBAction func DeleteEventButton(_ sender: UIButton) {
    }
    

}
