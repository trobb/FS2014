//
//  DetailViewController.swift
//  RageFacesVersion1
//
//  Created by Tyten Teegarden on 10/7/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

	var face:NSDictionary?
	@IBOutlet var imageView:UIImageView?

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let session = NSURLSession.sharedSession()
		let unwrappedFace = face!
		let faceURLString = unwrappedFace["url"] as NSString
		let faceURL = NSURL(string: faceURLString)
		session.dataTaskWithURL(faceURL!, completionHandler: { (imageData:NSData?, response:NSURLResponse?, NSErrorPointer) -> Void in
			NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
				let image = UIImage(data: imageData!)
				self.imageView?.image = image

			})
		}).resume()
	}
}

