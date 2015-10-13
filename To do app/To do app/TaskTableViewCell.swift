//
//  TaskTableViewCell.swift
//  To do app
//
//  Created by Carlos Caballero on 10/12/15.
//  Copyright © 2015 IOSDecal. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    @IBOutlet weak var taskLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
