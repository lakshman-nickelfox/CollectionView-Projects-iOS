//
//  MyCollectionViewCell.swift
//  CollectionView#1
//
//  Created by Sree Lakshman on 17/05/22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    
    @IBOutlet weak var cellLabel: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
