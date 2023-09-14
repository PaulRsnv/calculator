//
//  ViewController.swift
//  calculator
//
//  Created by Oxyenniu on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {

    let resultLabel = UILabel()
    let numButton = UIButton()
    let backView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        setupingLabel()
        
        
        
    }

    override func viewDidLayoutSubviews() {
        
        setupBackView()
      
//        setupNumberButton()
    }
    override func viewDidAppear(_ animated: Bool) {
        setupNumberButton()
    }
    
    private func setupingLabel() {
        view.addSubview(resultLabel)
        
        resultLabel.clipsToBounds = true
        resultLabel.layer.cornerRadius = 20
        resultLabel.text = "0"
        resultLabel.font = UIFont.systemFont(ofSize: 80)
        resultLabel.textColor = .white
        resultLabel.backgroundColor = .gray
        resultLabel.textAlignment = .right
        
        
        resultLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            resultLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            resultLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
        
    }
    
    private func setupBackView() {
        view.addSubview(backView)
        
        backView.layer.cornerRadius = 20
        backView.backgroundColor = .gray
        backView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backView.bottomAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            backView.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 16),
            backView.trailingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: -16),
            backView.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 20)
        ])
        
    }
    
    private func setupNumberButton() {
        let numButtonSize:CGFloat = view.frame.size.width / 4
        let numButton = UIButton(frame: CGRect(
            x: backView.frame.size.width / 50,
            y: backView.frame.size.height-numButtonSize * 1.07,
            width: numButtonSize,
            height: numButtonSize)
        )
        numButton.layer.cornerRadius = numButton.frame.width / 2
        numButton.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        numButton.setTitle("0", for: .normal)
        numButton.setTitleColor(.white, for: .normal)
        numButton.backgroundColor = #colorLiteral(red: 0.2551986575, green: 0.2744625807, blue: 0.303009361, alpha: 1)
        numButton.tag = 1
        
        backView.addSubview(numButton)
    }
    
    
    
    

}

