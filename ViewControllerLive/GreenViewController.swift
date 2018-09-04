//
//  GreenViewController.swift
//  ViewControllerLive
//
//  Created by Вероника Садовская on 04.09.2018.
//  Copyright © 2018 Veronika Sadovskaya. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
	let nameVC = "Green"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		UserDefaults.standard.set("View Controller \(nameVC): \(#function) \n", forKey: "label")
		print("View Controller \(nameVC): \(#function)")
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		updateLabel(nameFunc: "\(#function)")
		print("View Controller \(nameVC): \(#function)")
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		updateLabel(nameFunc: "\(#function)")
		print("View Controller \(nameVC): \(#function)")
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		updateLabel(nameFunc: "\(#function)")
		print("View Controller \(nameVC): \(#function)")
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		updateLabel(nameFunc: "\(#function)")
		print("View Controller \(nameVC): \(#function)")
	}
	
	func updateLabel (nameFunc: String) {
		if let label = UserDefaults.standard.string(forKey: "label") {
			UserDefaults.standard.set("\(label)View Controller \(nameVC): \(nameFunc) \n", forKey: "label")
		}
	}
}
