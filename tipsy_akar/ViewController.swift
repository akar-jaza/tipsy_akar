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
    
    var textField: UITextField = {
        var textField = UITextField()
        textField.textAlignment = .center
        textField.placeholder = "e.g. 123.56"
        textField.font = .systemFont(ofSize: 40)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    var UpStackView: UIStackView = {
        let sv = UIStackView()
        sv.backgroundColor = .systemCyan
        sv.alignment = .center
        sv.axis = .vertical
        sv.spacing = 26
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    var selectTipLabel: UILabel = {
        let billLabel = UILabel()
        billLabel.text = "Select Tip"
        billLabel.font = .systemFont(ofSize: 25)
        billLabel.textColor = .lightGray
        billLabel.backgroundColor = .red
        billLabel.translatesAutoresizingMaskIntoConstraints = false
        return billLabel
    }()
    
    var tipStackView: UIStackView = {
        var tipStackView = UIStackView()
        tipStackView.axis = .horizontal
        tipStackView.distribution = .fillProportionally
        tipStackView.translatesAutoresizingMaskIntoConstraints = false
        
        return tipStackView
        
    }()
    
    var choosSplitLabel: UILabel = {
        let choosSplitLabel = UILabel()
        choosSplitLabel.text = "Choose Tip"
        choosSplitLabel.font = .systemFont(ofSize: 25)
        choosSplitLabel.textColor = .gray
        choosSplitLabel.translatesAutoresizingMaskIntoConstraints = false
        return choosSplitLabel
    }()
    
    var tipButtonOne: UIButton = {
        var tipButton = UIButton()
        tipButton.setTitle("0%", for: .normal)
        tipButton.setTitleColor(UIColor(red: 6/255.0, green: 176/255.0, blue: 107/255.0, alpha: 1.000), for: .normal)
        tipButton.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        tipButton.translatesAutoresizingMaskIntoConstraints = false

        return tipButton
    }()
    
    var tipButtonTwo: UIButton = {
        var tipButton = UIButton()
        tipButton.translatesAutoresizingMaskIntoConstraints = false
        tipButton.setTitle("0%", for: .normal)
        tipButton.setTitleColor(UIColor(red: 6/255.0, green: 176/255.0, blue: 107/255.0, alpha: 1.000), for: .normal)
        tipButton.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
       
        return tipButton
    }()
    
    var tipButtonThree: UIButton = {
        var tipButton = UIButton()
        tipButton.setTitle("0%", for: .normal)
        tipButton.setTitleColor(UIColor(red: 6/255.0, green: 176/255.0, blue: 107/255.0, alpha: 1.000), for: .normal)
        tipButton.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        tipButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        return tipButton
    }()
    
    var buttonAndStepperStackView: UIStackView = {
        var buttonAndStepperStackView = UIStackView()
        buttonAndStepperStackView.axis = .horizontal
        buttonAndStepperStackView.spacing = 27
        buttonAndStepperStackView.translatesAutoresizingMaskIntoConstraints = false
        
        return buttonAndStepperStackView
    }()
    
    
    var bottomStackView: UIStackView = {
        let bsv = UIStackView()
        bsv.backgroundColor = .systemGreen
        bsv.alignment = .center
        bsv.translatesAutoresizingMaskIntoConstraints = false
        bsv.axis = .vertical
        bsv.backgroundColor = UIColor(red: 216/255.0, green: 249/255.0, blue: 235/255.0, alpha: 1.000)
        return bsv
    }()
    
    
    var bottomGreenView: UIView = {
        var uiView = UIView()
        uiView.backgroundColor = .systemCyan
        uiView.translatesAutoresizingMaskIntoConstraints = false
        return uiView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        
        self.view.addSubview(UpStackView)
        //        self.view.addSubview(bottomGreenView)
        self.view.addSubview(bottomStackView)
        UpStackView.addArrangedSubview(billLabel)
        UpStackView.addArrangedSubview(textField)
        
        //        bottomGreenView.addSubview(selectTipLabel)
        
        
        bottomStackView.addArrangedSubview(selectTipLabel)
        bottomStackView.addArrangedSubview(tipStackView)
        bottomStackView.addArrangedSubview(choosSplitLabel)
        
        tipStackView.addArrangedSubview(tipButtonOne)
        tipStackView.addArrangedSubview(tipButtonTwo)
        tipStackView.addArrangedSubview(tipButtonThree)
        
        NSLayoutConstraint.activate([
            billLabel.heightAnchor.constraint(equalToConstant: 60),
            billLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10),
            billLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            billLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            
            
            //            bottomGreenView.topAnchor.constraint(equalTo: UpStackView.bottomAnchor, constant: 40),
            //            bottomGreenView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            //            bottomGreenView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            
            
            selectTipLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            selectTipLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            
            choosSplitLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            choosSplitLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            
            tipButtonOne.heightAnchor.constraint(equalToConstant: 54),
            tipButtonOne.widthAnchor.constraint(equalToConstant: 60),
            tipButtonTwo.heightAnchor.constraint(equalToConstant: 54),
            tipButtonThree.heightAnchor.constraint(equalToConstant: 54),
            tipButtonThree.widthAnchor.constraint(equalToConstant: 60),
            
            tipButtonOne.widthAnchor.constraint(equalTo: tipButtonTwo.widthAnchor, multiplier: 0.2),
            
            
            bottomStackView.topAnchor.constraint(equalTo: UpStackView.bottomAnchor, constant: 40),
            bottomStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            bottomStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            
        ])
    }
    
    
}

