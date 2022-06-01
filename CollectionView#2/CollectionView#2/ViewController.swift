//
//  ViewController.swift
//  CollectionView#2
//
//  Created by Sree Lakshman on 18/05/22.
//

import UIKit

//struct MovieList {
//    var imageName: [String]
//    var title : String
//}

class ViewController: UIViewController {

    @IBOutlet weak var collectionView1: UICollectionView!
    
    
    @IBOutlet weak var collectionView2: UICollectionView!
    
    
    @IBOutlet weak var collectionView3: UICollectionView!
    
    
    
    var imageSet1:[String] =
    ["Aot","Batman","hunterxhunter","Aot","Batman","hunterxhunter","Aot","Batman","hunterxhunter"]

    var imageSet2:[String] =
    ["ipl1","ipl2","ipl3","ipl1","ipl2","ipl3","ipl1","ipl2","ipl3"]

    var imageSet3:[String] =
    ["cars","cars2","toystory","cars","cars2","toystory","cars","cars2","toystory"]

    
     //var dataSource = [MovieList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        self.setupCollectionView1()
        self.setupCollectionView2()
        self.setupCollectionView3()
        
    
    }
//    private func setUpData() {
//        dataSource = []
//        var title1 = "Latest & Trending"
//        var title2 = "Best in Sports"
//        var title3 = "Kids Movies"
//
//        var imageSet1:[String] =
//        ["Aot","Batman","hunterxhunter","Aot","Batman","hunterxhunter","Aot","Batman","hunterxhunter"]
//
//        var imageSet2:[String] =
//        ["ipl1","ipl2","ipl3","ipl1","ipl2","ipl3","ipl1","ipl2","ipl3"]
//
//        var imageSet3:[String] =
//        ["cars","cars2","toystory","cars","cars2","toystory","cars","cars2","toystory"]
//
//        dataSource.append(MovieList(imageName: imageSet1, title: title1))
//        dataSource.append(MovieList(imageName: imageSet2, title: title2))
//        dataSource.append(MovieList(imageName: imageSet3, title: title3))
//
//
//
//    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    private func setupCollectionView1() {
        self.collectionView1.delegate = self
        self.collectionView1.dataSource = self
        
        self.collectionView1.register(UINib(nibName: "CollectionViewCell_1", bundle: nil), forCellWithReuseIdentifier: "cell1")
    }
    
    
    
    private func setupCollectionView2() {
        self.collectionView2.delegate = self
        self.collectionView2.dataSource = self
        
        self.collectionView2.register(UINib(nibName: "CollectionViewCell_2", bundle: nil), forCellWithReuseIdentifier: "cell2")
    }
    
    
    private func setupCollectionView3() {
        self.collectionView3.delegate = self
        self.collectionView3.dataSource = self
        
        self.collectionView3.register(UINib(nibName: "CollectionViewCell_3", bundle: nil), forCellWithReuseIdentifier: "cell3")
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1
        {
            return imageSet1.count
            
            
        }else if collectionView == self.collectionView2
        
        {
            return imageSet2.count
            
            
        }else{
            return imageSet3.count
        }
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1{
            
            let cell = collectionView1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell_1
            cell.cellImage1.image = UIImage(named: imageSet1[indexPath.row])
            return cell
            
        }else if collectionView == self.collectionView2{
            
            let cell = collectionView2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell_2
            cell.cellImage2.image = UIImage(named: imageSet2[indexPath.row])
            return cell
            
            
        }else {
            
            let cell = collectionView3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell_3
            cell.cellImage3.image = UIImage(named: imageSet3[indexPath.row])
            return cell
        }
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.collectionView1{
            return CGSize(width: collectionView.frame.width/3, height:200)
        }
       else if collectionView == self.collectionView2{
       
            return CGSize(width: collectionView.frame.width/3, height:200)
    }
        else{
            return CGSize(width: collectionView.frame.width/3, height:200)
        }
        
    }
}


