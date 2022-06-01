//
//  MyTableViewCell.swift
//  HotstarView
//
//  Created by Sree Lakshman on 19/05/22.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.myCollectionView.delegate = self
        self.myCollectionView.dataSource = self
        self.myCollectionView.register(UINib(nibName: "HotstarCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "collectioncell")
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hotstarData[myCollectionView.tag].hotstarImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! HotstarCollectionViewCell
        
       // cell.myLabel.text = hotstarData[myCollectionView.tag].hotstarTitle
        
        cell.myImage.image = UIImage(named: hotstarData[myCollectionView.tag].hotstarImage[indexPath.row])
        
        
        return cell
        
        
    }
    
}
