//
//  AddEventViewController.swift
//  AttendanceApp
//
//  Created by Edith Avalos on 5/2/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var NewEventLabel: UILabel!
    @IBOutlet weak var StartTimeLabel: UILabel!
    @IBOutlet weak var StartDatePicker: UIDatePicker!
    @IBOutlet weak var EndTimeLabel: UILabel!
    @IBOutlet weak var EndDatePicker: UIDatePicker!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var TitleTextField: UITextField!
    @IBOutlet weak var LocationLabel: UILabel!
    @IBOutlet weak var LocationTextFieldl: UITextField!
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var DescriptionTextView: UITextView!
    @IBAction func CancelButton(_ sender: UIButton) {
    }
    @IBAction func SaveButton(_ sender: UIButton) {
    }
    
    
    
    
    
    
}
