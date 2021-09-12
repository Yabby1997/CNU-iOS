//
//  ViewController.swift
//  nasa
//
//  Created by Seunghun Yang on 2021/08/31.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var apodCollectionView: UICollectionView!
    var selectedItem: Int? = nil
    var apods: [APODResponse]? = nil {
        didSet {
            DispatchQueue.main.async {
                self.apodCollectionView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apodCollectionView.delegate = self
        apodCollectionView.dataSource = self
        
        APIService.fetchAPOD { self.apods = $0 }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController {
            guard let index = selectedItem, let apod = apods?[index] else { return }
            detailViewController.apod = apod
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let apods = self.apods else { return 0 }
        return apods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "APODCollectionViewCell", for: indexPath) as? APODCollectionViewCell,
              let apod = apods?[indexPath.item] else { return UICollectionViewCell() }
        
        APIService.fetchData(url: apod.url) { data in
            cell.thumbnailImageView.image = UIImage(data: data)
        }
        cell.thumbnailImageView.contentMode = .scaleAspectFill
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedItem = indexPath.item
        self.performSegue(withIdentifier: "segueToDetailViewController", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 4) / 3
        
        return CGSize(width: width, height: width)
    }
}
