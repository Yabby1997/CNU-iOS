//
//  DetailViewController.swift
//  nasa
//
//  Created by Seunghun Yang on 2021/09/11.
//

import UIKit

class DetailViewController: UIViewController {
    var item: Int? = nil
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let item = self.item else { return }
        infoLabel.text = "\(item) 번째 셀에 대한 정보입니다."
    }
}
