//
//  RedViewController.swift
//  ViewControllerLive
//
//  Created by Вероника Садовская on 04.09.2018.
//  Copyright © 2018 Veronika Sadovskaya. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
	let nameVC = "Red"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print("View Controller \(nameVC): \(#function)")
		updateLabel(nameFunc: "\(#function)")
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		print("View Controller \(nameVC): \(#function)")
		updateLabel(nameFunc: "\(#function)")
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		print("View Controller \(nameVC): \(#function)")
		updateLabel(nameFunc: "\(#function)")
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		print("View Controller \(nameVC): \(#function)")
		updateLabel(nameFunc: "\(#function)")
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		print("View Controller \(nameVC): \(#function)")
		updateLabel(nameFunc: "\(#function)")
	}
	
	func updateLabel (nameFunc: String) {
		if let label = UserDefaults.standard.string(forKey: "label") {
			UserDefaults.standard.set("\(label)View Controller \(nameVC): \(nameFunc) \n", forKey: "label")
		}
	}	
}
