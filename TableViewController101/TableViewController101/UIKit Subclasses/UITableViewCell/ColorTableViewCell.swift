//
//  ColorTableViewCell.swift
//  TableViewController101
//
//  Created by Tyten Teegarden on 9/30/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {

	@IBOutlet var colorView:UIView?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
