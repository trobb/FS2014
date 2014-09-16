//
//  GoldViewController.swift
//  iOS 102
//
//  Created by Tyten Teegarden on 9/16/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class GoldViewController: UIViewController {

	@IBOutlet var textField:UITextField?
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		let segueIdentifier = segue.identifier
		if segueIdentifier == "GoToYellow" {
			let yellowController:YellowViewController = segue.destinationViewController as YellowViewController
			yellowController.quote = textField?.text
		}
	}

}
