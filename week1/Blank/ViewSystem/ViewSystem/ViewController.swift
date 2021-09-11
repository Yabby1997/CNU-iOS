//
//  ViewController.swift
//  ViewSystem
//
//  Created by Seunghun Yang on 2021/09/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var pinkView: UIView!
    @IBOutlet weak var indigoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topView.backgroundColor = .red
        topButton.backgroundColor = .green
        topButton.setTitle("배경색 바꾸기", for: .normal)
    }

    @IBAction func topButtonTapped(_ sender: Any) {
        print(topView.frame)
        print(topView.bounds)
        print(centerView.frame)
        print(centerView.bounds)
        print(pinkView.frame)
        print(pinkView.bounds)
        print(indigoView.frame)
        print(indigoView.bounds)
    }
}

