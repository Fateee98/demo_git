//
//  CellBasicTableViewCell.swift
//  Sample Login
//
//  Created by Fate on 8/23/18.
//  Copyright © 2018 Fate. All rights reserved.
//

import UIKit

class CellBasicTableViewCell: UITableViewCell {

    @IBOutlet weak var CellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
