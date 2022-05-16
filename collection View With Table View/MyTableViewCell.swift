//
//  MyTableViewCell.swift
//  collection View With Table View
//
//  Created by jay vachhani on 15/05/22.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
extension MyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ArrData[myCollectionView.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! MyCollectionViewCell
        
        cell.myImage.image = UIImage(named: ArrData[myCollectionView.tag].imageGallery[indexPath.row])
        return cell
    }
    
    
}
