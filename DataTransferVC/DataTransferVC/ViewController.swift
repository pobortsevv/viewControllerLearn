//
//  ViewController.swift
//  DataTransferVC
//
//  Created by sabra on 04.07.2021.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var loginField: UITextField!
	@IBOutlet weak var passwordField: UITextField!
	@IBOutlet weak var resultLabel: UILabel!
	
	
	@IBAction func loginTap(_ sender: UIButton) {
		
		performSegue(withIdentifier: "detailSegue", sender: nil)
		
	}
	
	@IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
		guard segue.identifier == "unwindSegue"  else {
			return
		}
		guard let svc = segue.source as? secondViewController else {
			return
		}
		self.resultLabel.text = svc.label.text
	}
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let dvc = segue.destination as? secondViewController else {return}
		dvc.login = loginField.text
	}
	

}

