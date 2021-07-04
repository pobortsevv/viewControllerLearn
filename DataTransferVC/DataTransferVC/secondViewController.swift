//
//  secondViewController.swift
//  DataTransferVC
//
//  Created by sabra on 04.07.2021.
//

import UIKit

class secondViewController: UIViewController {
	
	@IBOutlet weak var backButton: UIButton!
	@IBOutlet weak var label: UILabel!
	var login: String?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		guard let login = self.login else {return}
		label.text = "Hello, \(login)"
	}
	
	@IBAction func backAction(_ sender: UIButton) {
		performSegue(withIdentifier: "unwindSegue", sender: nil)
	}
	

}
