//
//  ResourcesTableViewCell.swift
//  GUGproject
//
//  Created by Kiley Abbot on 7/16/20.
//  Copyright © 2020 MK, Nasrin, Kiley. All rights reserved.
//

import UIKit

class ResourcesTableViewCell: UITableViewCell {

    @IBOutlet weak var resourcesLabel: UILabel!
    
    @IBOutlet weak var resourcesView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}