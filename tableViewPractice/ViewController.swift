//
//  ViewController.swift
//  tableViewPractice
//
//  Created by Mimsad Ahmed on 6/3/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName : "designTableCellTableViewCell", bundle : nil ), forCellReuseIdentifier: "prototypeCell")
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        268.94
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let builtCell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell", for: indexPath )
         as! designTableCellTableViewCell
         
         //builtCell.messageLabel.text = message[indexPath.row].messageData
         return builtCell
     }


}

