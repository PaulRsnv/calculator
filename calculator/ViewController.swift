//
//  ViewController.swift
//  calculator
//
//  Created by Oxyenniu on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {

    let resultLabel = UILabel()
    let zeroButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view.addSubview(resultLabel)
        setupingLabel()
        
    }

    override func viewDidLayoutSubviews() {
        setupNumberButton()
    }
    
    private func setupNumberButton() {
        //let buttonSize: CGFloat = view.frame.size.width / 4
        //zeroButton.frame = CGRect(x: 0, y: view.frame.size.height, width: buttonSize * 3, height: buttonSize)
        view.addSubview(zeroButton)
        zeroButton.layer.cornerRadius = zeroButton.frame.width / 2
        zeroButton.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        zeroButton.setTitle("0", for: .normal)
        zeroButton.setTitleColor(.white, for: .normal)
        zeroButton.backgroundColor = .gray
        zeroButton.tag = 1
        
        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([zeroButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20), zeroButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20), zeroButton.heightAnchor.constraint(equalToConstant: view.frame.size.width / 4), zeroButton.widthAnchor.constraint(equalToConstant: view.frame.size.width / 4)])
        
        
    }
    
    
    private func setupingLabel() {
        //resultLabel.frame = CGRect(x: 100, y: 300, width: 200, height: 200)
        resultLabel.text = ""
        resultLabel.font = UIFont.systemFont(ofSize: 80)
        resultLabel.textColor = .white
        resultLabel.backgroundColor = .gray
        resultLabel.layer.cornerRadius = 20
        resultLabel.textAlignment = .right
        
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            resultLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            resultLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
        
    }
    
    

}

