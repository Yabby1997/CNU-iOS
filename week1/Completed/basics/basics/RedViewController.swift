//
//  RedViewController.swift
//  basics
//
//  Created by Seunghun Yang on 2021/09/05.
//

import UIKit

class RedViewController: UIViewController {
    var user: User? = nil

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.navigationController?.viewControllers)
        
        guard let user = user else { return }
        nameLabel.text = user.name
        idLabel.text = String(describing: user.id)
        genderLabel.text = user.gender.description
        birthdayLabel.text = String(describing: user.birthDay)
    }
}
