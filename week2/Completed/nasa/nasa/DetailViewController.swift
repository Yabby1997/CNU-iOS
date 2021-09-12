//
//  DetailViewController.swift
//  nasa
//
//  Created by Seunghun Yang on 2021/09/11.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var astronomyImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var apod: APODResponse? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let apod = self.apod else { return }
        astronomyImageView.contentMode = .scaleAspectFill
        APIService.fetchData(url: apod.url) { data in
            self.astronomyImageView.image = UIImage(data: data)
        }
        title = apod.title
        titleLabel.text = apod.title
        dateLabel.text = apod.date
        descriptionTextView.text = apod.description
    }
}
