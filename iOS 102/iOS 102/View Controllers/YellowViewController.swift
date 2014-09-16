//
//  YellowViewController.swift
//  iOS 102
//
//  Created by Tyten Teegarden on 9/16/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

	@IBOutlet var label:UILabel?

	var quote:String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		if let unwrappedQuote = quote {
			label?.text = unwrappedQuote
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
