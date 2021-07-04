//
//  SecondViewController.swift
//  viewControllerLearn
//
//  Created by Ilya Cherkasov on 03.07.2021.
//

import UIKit

class SecondViewController: UIViewController {

    let stackView = UIStackView()
    let firstLabel = UILabel()
    let secondLabel = UILabel()
    
    var i = 0
    var j = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.text = "\(i)"
        secondLabel.text = "\(j)"
        addSubviewAndSetup()
        makeConstraints()
    }
    
    func addSubviewAndSetup() {
        self.view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.addArrangedSubview(firstLabel)
        stackView.addArrangedSubview(secondLabel)
        firstLabel.backgroundColor = .red
        secondLabel.backgroundColor = .green
    }
    
    func makeConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
}
