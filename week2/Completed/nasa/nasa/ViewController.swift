//
//  ViewController.swift
//  nasa
//
//  Created by Seunghun Yang on 2021/08/31.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var apodTableView: UITableView!
    var selectedRow: Int? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apodTableView.delegate = self
        apodTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController {
            detailViewController.row = selectedRow
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row) 번째 cell 입니다."
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRow = indexPath.row
        performSegue(withIdentifier: "segueToDetailViewController", sender: self)
    }
}

