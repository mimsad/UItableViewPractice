//
//  ViewController.swift
//  tableViewPractice
//
//  Created by Mimsad Ahmed on 6/3/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    let ara : [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let Dictionary: [Int: [String]] = [1: ["Album name 01", "Sep 1 2020", "total 1 photos"], 2 : ["Album name 02", "Sep 2 2020", "total 2 photos"], 3: ["Album name 03", "Sep 3 2020", "total 3 photos"],
                                       4: ["Album name 04", "Sep 4 2020", "total 4 photos"], 5: ["Album name 05", "Sep 5 2020", "total 5 photos"], 6: ["Album name 06", "Sep 6 2020", "total 6 photos"], 7: ["Album name 07", "Sep 7 2020", "total 7 photos"], 8: ["Album name 08", "Sep 8 2020", "total 8 photos"], 9: ["Album name 09", "Sep 9 2020", "total 9 photos"], 10: ["Album name 10", "Sep 10 2020", "total 10 photos"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cancelButton.image = UIImage(named: "cancel")?.withRenderingMode(.alwaysOriginal)
        doneButton.image = UIImage(named: "done")?.withRenderingMode(.alwaysOriginal)
        tableView.showsHorizontalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        self.tableView.separatorColor = UIColor.clear
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName : "designTableCellTableViewCell", bundle : nil ), forCellReuseIdentifier: "prototypeCell")
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        268.94
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Dictionary.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let builtCell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell", for: indexPath )
        as! designTableCellTableViewCell
        
        builtCell.firstLabel.text = Dictionary[ara[indexPath.row]]![0]
        builtCell.secondLabel.text = Dictionary[ara[indexPath.row]]![1]
        builtCell.thirdLabel.text = Dictionary[ara[indexPath.row]]![2]
        builtCell.cellimage.layer.cornerRadius = 11
        return builtCell
    }
}

