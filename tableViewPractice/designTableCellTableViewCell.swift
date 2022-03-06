//
//  designTableCellTableViewCell.swift
//  tableViewPractice
//
//  Created by Mimsad Ahmed on 6/3/22.
//

import UIKit

class designTableCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var cellimage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
