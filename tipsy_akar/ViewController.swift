//
//  ViewController.swift
//  tipsy_akar
//
//  Created by Akar jaza on 3/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    var billLabel: UILabel = {
        let billLabel = UILabel()
        billLabel.text = "Enter Bill Total"
        billLabel.font = .systemFont(ofSize: 25)
        billLabel.textColor = .gray
        billLabel.translatesAutoresizingMaskIntoConstraints = false
        return billLabel
    }()
    
    var UpStackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .blue
        
        UpStackView.addArrangedSubview(billLabel)
        
        NSLayoutConstraint.activate([
            UpStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            UpStackView.rightAnchor.constraint(equalTo: view.rightAnchor),
            UpStackView.leftAnchor.constraint(equalTo: view.leftAnchor),
            UpStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 40)
        ])
    }


}

