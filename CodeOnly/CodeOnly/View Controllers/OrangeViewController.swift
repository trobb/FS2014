//
//  OrangeViewController.swift
//  CodeOnly
//
//  Created by Tyten Teegarden on 9/18/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

	var stringToDisplay:String?

	override func loadView() {
		view = UIView(frame: UIScreen.mainScreen().bounds)
		view.backgroundColor = UIColor.orangeColor()
	}
}
