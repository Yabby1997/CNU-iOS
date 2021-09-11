//
//  DetailViewController.swift
//  nasa
//
//  Created by Seunghun Yang on 2021/09/11.
//

import UIKit

class DetailViewController: UIViewController {
    var row: Int? = nil
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let row = self.row else { return }
        infoLabel.text = "\(row) 번째 셀에 대한 정보입니다."
    }
}
