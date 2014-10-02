//
//  ColorTableViewCell.swift
//  CodeOnlyTableView
//
//  Created by Tyten Teegarden on 10/2/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {

	let colorView = UIView(frame: CGRectZero)

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}

	override init?(style: UITableViewCellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setUpSubviews()
	}

	func setUpSubviews(){
		colorView.setTranslatesAutoresizingMaskIntoConstraints(false)
		contentView.addSubview(colorView)

		let colorViewTopConstraint = NSLayoutConstraint(item: colorView, attribute: .Top, relatedBy: .Equal, toItem: contentView, attribute: .Top, multiplier: 1.0, constant: 5.0)

		let colorViewRightConstraint = NSLayoutConstraint(item: colorView, attribute: .Right, relatedBy: .Equal, toItem: contentView, attribute: .Right, multiplier: 1.0, constant: -15.0)

		let colorViewBottomConstraint = NSLayoutConstraint(item: colorView, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1.0, constant: -5.0)

		let colorViewLeftConstraint = NSLayoutConstraint(item: colorView, attribute: .Left, relatedBy: .Equal, toItem: contentView, attribute: .Left, multiplier: 1.0, constant: 15.0)

		// Put all your constraints into an array
		let colorViewConstraints = [colorViewTopConstraint, colorViewRightConstraint, colorViewBottomConstraint, colorViewLeftConstraint]

		// Add constraints to content view
		contentView.addConstraints(colorViewConstraints)
	}

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
