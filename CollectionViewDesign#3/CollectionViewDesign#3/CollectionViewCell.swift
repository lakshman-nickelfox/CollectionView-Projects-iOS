//
//  CollectionViewCell.swift
//  CollectionViewDesign#3
//
//  Created by Sree Lakshman on 19/05/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var photoView: UIView!
    
    
    @IBOutlet weak var imagePhoto: UIImageView!
    
    
    @IBOutlet weak var photoLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
