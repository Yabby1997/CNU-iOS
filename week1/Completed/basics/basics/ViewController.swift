//
//  ViewController.swift
//  basics
//
//  Created by Seunghun Yang on 2021/08/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var pinkView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dump(self.view)
        topView.backgroundColor = .red
        topButton.backgroundColor = .systemIndigo
        topButton.setTitleColor(.white, for: .normal)
        topButton.setTitle("버튼", for: .normal)
        
        print(self.view.frame)
        print(self.view.bounds)
        print(topView.frame)
        print(topView.bounds)
        print(greenView.frame)
        print(greenView.bounds)
        print(pinkView.frame)
        print(pinkView.bounds)
        
        print(self.navigationController?.viewControllers)
    }

    @IBAction func buttonTapped(_ sender: Any) {
        topView.backgroundColor = .systemIndigo
    }
    
}

