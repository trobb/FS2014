//
//  ColorTableViewController.swift
//  CodeOnlyTableView
//
//  Created by Tyten Teegarden on 10/2/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {

	var color = UIColor.lightGrayColor()

	let colorList:[String] = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(ColorTableViewCell.classForCoder(), forCellReuseIdentifier: "reuseIdentifier")
		tableView.rowHeight = 44.0
    }

	// MARK: - Table view delegate

	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		let newViewController = UIViewController(nibName: nil, bundle: nil)

		let indexOfSelectedRow = tableView.indexPathForSelectedRow()?.row

		// Customize your cell here.
		if colorList[indexOfSelectedRow!] == "Red" {
			color = UIColor.redColor()
		}

		if colorList[indexOfSelectedRow!] == "Orange" {
			color = UIColor.orangeColor()
		}

		if colorList[indexOfSelectedRow!] == "Yellow" {
			color = UIColor.yellowColor()
		}

		if colorList[indexOfSelectedRow!] == "Green" {
			color = UIColor.greenColor()
		}

		if colorList[indexOfSelectedRow!] == "Blue" {
			color = UIColor.blueColor()
		}

		if colorList[indexOfSelectedRow!] == "Purple" {
			color = UIColor.purpleColor()
		}

		newViewController.view.backgroundColor = color

		navigationController?.pushViewController(newViewController, animated: true)
	}

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return colorList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as ColorTableViewCell

        // Configure the cell...

		if colorList[indexPath.row] == "Red" {
			color = UIColor.redColor()
		}

		if colorList[indexPath.row] == "Orange" {
			color = UIColor.orangeColor()
		}

		if colorList[indexPath.row] == "Yellow" {
			color = UIColor.yellowColor()
		}

		if colorList[indexPath.row] == "Green" {
			color = UIColor.greenColor()
		}

		if colorList[indexPath.row] == "Blue" {
			color = UIColor.blueColor()
		}

		if colorList[indexPath.row] == "Purple" {
			color = UIColor.purpleColor()
		}

		cell.colorView.backgroundColor = color

        return cell
    }

}
