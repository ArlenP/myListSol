//
//  TableViewCell.swift
//  MyList
//
//  Created by Arlen Peña on 28/11/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblValor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
