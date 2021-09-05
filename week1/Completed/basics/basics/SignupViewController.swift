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
    @IBOutlet weak var toeicScoreSlider: UISlider!
    @IBOutlet weak var toeicScoreLabel: UILabel!
    @IBOutlet weak var agreementSwitch: UISwitch!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextViewController = segue.destination as? RedViewController
              
        nextViewController?.user = User(name: nameTextField.text!,
                                        gender: User.Gender(rawValue: genderSegmentedControl.selectedSegmentIndex)!,
                                        birthDay: birthDatePicker.date,
                                        toeicScore: Int(toeicScoreSlider.value),
                                        agreed: agreementSwitch.isOn)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toeicScoreSlider.minimumValue = 0
        toeicScoreSlider.maximumValue = 990
        toeicScoreSlider.value = 450
    }
    
    @IBAction func toeicScoreSliderDidChanged(_ sender: Any) {
        toeicScoreLabel.text = "\(Int(toeicScoreSlider.value))"
    }
}
