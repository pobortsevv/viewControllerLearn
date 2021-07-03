//
//  ViewController.swift
//  viewControllerLearn
//
//  Created by sabra on 03.07.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSecondVC" {
            let dvc = segue.destination  as! SecondViewController
            dvc.someProperties = ""
        }
    }
    
    @IBAction func changeView(_ sender: Any) {

    }
    
}

