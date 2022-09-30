//
//  ViewController2.swift
//  authDemo
//
//  Created by Hashstudioz on 02/09/22.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
     
    let Players : [String] = ["Player2","Player3","Player4","Sonu","Player","Anshu","Himanshu Sharma"];

    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTable", for: indexPath) as! cellTable
        cell.lblName.text = Players[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}
class cellTable: UITableViewCell {
    @IBOutlet weak var lblName: UILabel!
}
