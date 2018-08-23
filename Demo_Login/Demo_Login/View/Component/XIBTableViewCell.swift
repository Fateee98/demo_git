//
//  XIBTableViewCell.swift
//  Demo_Login
//
//  Created by Fate on 8/21/18.
//  Copyright © 2018 Fate. All rights reserved.
//

import UIKit

class XIBTableViewCell: UITableViewCell {

    @IBOutlet weak var mLabel: UILabel!
    
    func setData(title: String){
        mLabel.text = title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
