//
//  PreferencesViewController.swift
//  AttendanceApop
//
//  Created by Baker, Allen on 3/6/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import UIKit

class PreferencesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var SwitchOne: UISwitch!
    @IBOutlet weak var SwitchTwo: UISwitch!
    @IBOutlet weak var SwitchThree: UISwitch!
    @IBOutlet weak var SwitchFour: UISwitch!
    
    @IBAction func SwitchOneChange(_ sender: UISwitch) {
    }
    
    
    @IBAction func SwitchTwoChange(_ sender: UISwitch) {
    }
    
    
    @IBAction func SwitchThreeChange(_ sender: UISwitch) {
    }
    
    @IBAction func SwitchFourChange(_ sender: UISwitch) {
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
