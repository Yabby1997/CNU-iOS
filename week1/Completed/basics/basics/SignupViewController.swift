//
//  SignupViewController.swift
//  basics
//
//  Created by Seunghun Yang on 2021/09/05.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var birthDatePicker: UIDatePicker!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextViewController = segue.destination as? RedViewController
              
        nextViewController?.user = User(name: nameTextField.text!,
                                        gender: User.Gender(rawValue: genderSegmentedControl.selectedSegmentIndex)!,
                                        birthDay: birthDatePicker.date)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
