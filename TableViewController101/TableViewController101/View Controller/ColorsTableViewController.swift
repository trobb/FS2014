//
//  ColorsTableViewController.swift
//  TableViewController101
//
//  Created by Tyten Teegarden on 9/30/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
	var color = UIColor.lightGrayColor()

	let colorList = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple","Red", "Orange", "Yellow", "Green", "Blue", "Purple"]

	// MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
		tableView.rowHeight = 44.0
    }

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "ColorPush" {
			let destinationViewController = segue.destinationViewController as UIViewController

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

			destinationViewController.view.backgroundColor = color

		}
	}

    // MARK: - Table view data source

	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}

	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return colorList.count
	}

	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		// Ask table view for a cell to use.
		let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier", forIndexPath: indexPath) as ColorTableViewCell

		// Customize your cell here.
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

		cell.cellColor = color

		// You're done. Return the cell back to the table view.
		println("A CELL FOR ROW \(indexPath.row)")
		return cell
	}
}
