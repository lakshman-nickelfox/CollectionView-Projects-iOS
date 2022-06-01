//
//  ViewController.swift
//  HotstarView
//
//  Created by Sree Lakshman on 19/05/22.
//

import UIKit

struct MovieData
{
    let hotstarTitle: String
    let hotstarImage: [String]
}

var hotstarData = [
    
    MovieData(hotstarTitle: "Latest & Trending", hotstarImage: ["Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter"]),
    MovieData(hotstarTitle: "Best in Sports", hotstarImage: ["ipl1","ipl2","ipl3","ipl1","ipl2","ipl3","ipl1","ipl2","ipl3","ipl1","ipl2","ipl3"]),
    MovieData(hotstarTitle: "Kids Movies", hotstarImage: ["cars","cars2","toystory","cars","cars2","toystory","cars","cars2","toystory","cars","cars2","toystory"]),
    MovieData(hotstarTitle: "Latest & Trending", hotstarImage: ["Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter"]),
    MovieData(hotstarTitle: "Best in Sports", hotstarImage: ["ipl1","ipl2","ipl3","ipl1","ipl2","ipl3","ipl1","ipl2","ipl3","ipl1","ipl2","ipl3"]),
    MovieData(hotstarTitle: "Kids Movies", hotstarImage: ["cars","cars2","toystory","cars","cars2","toystory","cars","cars2","toystory","cars","cars2","toystory"]),
    MovieData(hotstarTitle: "Latest & Trending", hotstarImage: ["Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter"]),
    MovieData(hotstarTitle: "Best in Sports", hotstarImage: ["ipl1","ipl2","ipl3","ipl1","ipl2","ipl3","ipl1","ipl2","ipl3","ipl1","ipl2","ipl3"]),
    MovieData(hotstarTitle: "Kids Movies", hotstarImage: ["cars","cars2","toystory","cars","cars2","toystory","cars","cars2","toystory","cars","cars2","toystory"]),
    MovieData(hotstarTitle: "Latest & Trending", hotstarImage: ["Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter","Batman","Aot","hunterxhunter"]),
    MovieData(hotstarTitle: "Best in Sports", hotstarImage: ["ipl1","ipl2","ipl3","ipl1","ipl2","ipl3","ipl1","ipl2","ipl3","ipl1","ipl2","ipl3"]),
    MovieData(hotstarTitle: "Kids Movies", hotstarImage: ["cars","cars2","toystory","cars","cars2","toystory","cars","cars2","toystory","cars","cars2","toystory"])

]

 

//    private func setUpData() {
//        dataSource = []
//        var hotstarTitle1 = "Latest & Trending"
//        var hotstarTitle2 = "Best in Sports"
//        var HotstarTitle3 = "Kids Movies"
//
//        var hotstarImage1:[String] =
//        ["Aot","Batman","hunterxhunter","Aot","Batman","hunterxhunter","Aot","Batman","hunterxhunter"]
//
//        var hotstarImage2:[String] =
//        ["ipl1","ipl2","ipl3","ipl1","ipl2","ipl3","ipl1","ipl2","ipl3"]
//
//        var hotstarImage3:[String] =
//        ["cars","cars2","toystory","cars","cars2","toystory","cars","cars2","toystory"]
//
//        dataSource.append(MovieData(hotstarTitle: hotstarTitle1, hotstarImage: hotstarImage1))
//        dataSource.append(MovieData(hotstarTitle: hotstarTitle2, hotstarImage: hotstarImage2))
//        dataSource.append(MovieData(hotstarTitle: hotstarTitle3, hotstarImage: hotstarImage3))
//
//
//
//    }
  

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    

}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return hotstarData.count
    }
    
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
       return hotstarData[section].hotstarTitle
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        cell.myCollectionView.tag = indexPath.section
        //cell.myLabel.text = hotstarData[indexPath.row].hotstarTitle
        
        return cell
    }
    
    
}
    
    





