//
//  ViewController.swift
//  collection View With Table View
//
//  Created by jay vachhani on 15/05/22.
//

import UIKit

var ArrData = [
             MovieApp(sectionType: "Bollywood Movies", imageGallery: ["kabir","kgf","rrr","war","sarukh"]),
             MovieApp(sectionType: "serise", imageGallery: ["asur","death","mirzapur","money","sukla"])
]

class ViewController: UIViewController {


    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 200
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return ArrData.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ArrData[section].sectionType
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        cell.myCollectionView.tag = indexPath.section
        return cell
        
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .yellow
    }
    
}
