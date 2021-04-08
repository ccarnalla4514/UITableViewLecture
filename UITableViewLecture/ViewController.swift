//
//  ViewController.swift
//  UITableViewLecture
//
//  Created by Christian Carnalla on 4/8/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    let cities = ["Chicago", "Dallas", "Paris", "Rome", "London"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let myCell = myTableView.dequeueReusableCell(withIdentifier: "myCell")
       
       // myCell?.textLabel!.text = "This is a Cell"
// return myCell!
let myCell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
myCell.textLabel!.text = cities[indexPath.row]
        
        
        return myCell
        
    }
    
}

