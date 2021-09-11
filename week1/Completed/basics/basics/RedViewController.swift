//
//  RedViewController.swift
//  basics
//
//  Created by Seunghun Yang on 2021/09/05.
//

import UIKit

class RedViewController: UIViewController {
    var user: User? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.navigationController?.viewControllers)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print(user?.name)
        print(user?.gender)
        print(user?.birthDay)
        print(user?.toeicScore)
        print(user?.agreed)
    }
}
