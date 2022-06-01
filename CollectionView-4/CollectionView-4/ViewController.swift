//
//  ViewController.swift
//  CollectionView-4
//
//  Created by Sree Lakshman on 20/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var brandCollectionView: UICollectionView!
    
    
    var imageSet:[String] =
    ["violet1","violet2","violet3","blue1","blue2","blue3","pink1","pink2","pink3","brown1","brown2","brown3","green1","green2","green3","violet1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupCollectionView()
    }


}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    private func setupCollectionView(){
        self.brandCollectionView.delegate = self
        self.brandCollectionView.dataSource = self
        self.brandCollectionView.register(UINib(nibName: "MyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageSet.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = brandCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.brandImage.image = UIImage(named: imageSet[indexPath.row])
        cell.brandImage.layer.cornerRadius = cell.frame.height/2
        cell.brandImage.layer.cornerRadius = cell.frame.width/2
        return cell
        
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width/3-15, height: 120)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
   
}

