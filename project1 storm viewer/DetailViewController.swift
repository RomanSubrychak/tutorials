//
//  DetailViewController.swift
//  project1 storm viewer
//
//  Created by Roman Subrichak on 3/23/17.
//  Copyright © 2017 Roman Subrychak. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

	@IBOutlet weak var imageView: UIImageView!
	
	var selectedImage: String?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		title = selectedImage
		
		if let imageToLoad = selectedImage {
			imageView.image = UIImage(named: imageToLoad)
		}
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.hidesBarsOnTap = true
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		navigationController?.hidesBarsOnTap = false
	}
	
}
