//
//  MainViewController.swift
//  AttendanceApop
//
//  Created by Baker, Allen on 3/6/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Main";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Action Methods
    
    @IBAction func RecordAttendanceButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toAttendance", sender: self)
    }
    
    @IBAction func GenerateReportsButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toReports", sender: self)
    }
    
    @IBAction func PeopleButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toPeople", sender: self)
    }
    
    @IBAction func EventsButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toEvents", sender: self)
    }
    
    @IBAction func SettingsButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toSettings", sender: self)
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
