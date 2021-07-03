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
        let vc = SecondViewController()
        vc.view.backgroundColor = .cyan
        vc.i = 5
        self.present(vc, animated: true) {
            print("Controller did appear")
            // ПОЧЕМУ НА ЛЕЙБЛЕ ДО СИХ ПОР 0??
        }
    }
}

