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
    @IBAction func actionBySeque(_ sender: Any) {
        
    }
    
    @IBAction func changeView(_ sender: UIButton) {
        print(#function)
        self.present(SecondViewController(), animated: true) {
            print("Constroller did appear")
        }
    }
    
}

