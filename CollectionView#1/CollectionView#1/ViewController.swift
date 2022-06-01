//
//  ViewController.swift
//  CollectionView#1
//
//  Created by Sree Lakshman on 17/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MyCollectionView: UICollectionView!
    
    var fruitImages:[String] = ["apple","banana","grapes","mango","orange","strawberry","apple","banana","grapes","mango","orange","strawberry","apple","banana","grapes","mango","orange","strawberry"]
    var fruitName:[String] = ["Apple","Banana","Grapes","Mango","Orange","Strawberry","Apple","Banana","Grapes","Mango","Orange","Strawberry","Apple","Banana","Grapes","Mango","Orange","Strawberry"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.setupCollectionView()
        
    }


}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    private func setupCollectionView() {
        self.MyCollectionView.delegate = self
        self.MyCollectionView.dataSource = self
        
        self.MyCollectionView.register(UINib(nibName: "MyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
    
    
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return fruitName.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = MyCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
    cell.cellImage.image = UIImage(named: fruitImages[indexPath.row])
    cell.cellLabel.text = fruitName[indexPath.row]
    return cell
}


}


extension ViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width/2-2,height:200)
    }
    
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {       return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    


}
    


