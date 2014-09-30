//
//  ColorTableViewCell.swift
//  TableViewController101
//
//  Created by Tyten Teegarden on 9/30/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {
	var cellColor = UIColor.lightGrayColor()
	@IBOutlet private var colorView:UIView?

	override func setHighlighted(highlighted: Bool, animated: Bool) {
		super.setHighlighted(highlighted, animated: animated)
		self.colorView?.backgroundColor = self.cellColor
	}

	override func setSelected(selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)
		self.colorView?.backgroundColor = self.cellColor
	}

	func setCellColor(cellColor: UIColor) {
		self.cellColor = cellColor
		self.colorView?.backgroundColor = self.cellColor
	}
}
