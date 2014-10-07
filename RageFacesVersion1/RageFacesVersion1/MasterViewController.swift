//
//  MasterViewController.swift
//  RageFacesVersion1
//
//  Created by Tyten Teegarden on 10/7/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {


	var faces:[NSDictionary] = []

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		// Register to observe a particular notification
		NSNotificationCenter.defaultCenter().addObserver(self, selector: "didObserveFacesFetchingComplete:", name: "TCTFacesFetchingComplete", object: nil)

		// Get the data
		FacesHandler.fetchFaces()
	}

	// This code runs when we observe a notification
	func didObserveFacesFetchingComplete (notification:NSNotification) {
		let userInfo = notification.userInfo! as NSDictionary
		faces = userInfo["faces"] as [NSDictionary]
		NSOperationQueue.mainQueue().addOperationWithBlock { () -> Void in
			self.tableView.reloadData()
		}
	}

	// MARK: - Segues

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "showDetail" {
		    if let indexPath = self.tableView.indexPathForSelectedRow() {
				let destinationController = segue.destinationViewController as DetailViewController
				let indexPath = tableView.indexPathForSelectedRow()?
				if let ip = indexPath {
					destinationController.face = faces[ip.row]
				}
		    }
		}
	}

	// MARK: - Table View

	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}

	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return faces.count
	}

	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

		let faceName = faces[indexPath.row]["name"] as NSString
		cell.textLabel?.text = faceName

		return cell
	}

}

