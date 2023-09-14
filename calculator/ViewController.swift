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
    let backView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        setupingLabel()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        setupNumberButton()
    }
    override func viewDidLayoutSubviews() {
        
        setupBackView()
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
            resultLabel.heightAnchor.constraint(equalToConstant: 300)
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
        let numButtonSize:CGFloat = view.frame.size.width / 5
        let zeroButton = UIButton(frame: CGRect(
            x: backView.frame.size.width / 50,
            y: backView.frame.size.height-numButtonSize * 1.07,
            width: numButtonSize,
            height: numButtonSize)
        )
        zeroButton.layer.cornerRadius = zeroButton.frame.width / 2
        zeroButton.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        zeroButton.setTitle("0", for: .normal)
        zeroButton.setTitleColor(.white, for: .normal)
        zeroButton.backgroundColor = #colorLiteral(red: 0.2551986575, green: 0.2744625807, blue: 0.303009361, alpha: 1)
        zeroButton.tag = 0
        zeroButton.showsTouchWhenHighlighted = true
        
        backView.addSubview(zeroButton)
        zeroButton.addTarget(self, action: #selector(zeroButtonTapped), for: .touchUpInside)
        
        for i in 0..<3 {
            let button_row_1 = UIButton(frame: CGRect(
                x: CGFloat(i) * numButtonSize + backView.frame.size.width / 50,
                y: backView.frame.size.height-numButtonSize * 2.14,
                width: numButtonSize,
                height: numButtonSize)
            )
            button_row_1.layer.cornerRadius = zeroButton.frame.width / 2
            button_row_1.titleLabel?.font = UIFont.systemFont(ofSize: 25)
            button_row_1.setTitle("\(i+1)", for: .normal)
            button_row_1.setTitleColor(.white, for: .normal)
            button_row_1.backgroundColor = #colorLiteral(red: 0.2551986575, green: 0.2744625807, blue: 0.303009361, alpha: 1)
            button_row_1.tag = i+1
            button_row_1.showsTouchWhenHighlighted = true
            
            backView.addSubview(button_row_1)
            button_row_1.addTarget(self, action: #selector(numButtonTapped), for: .touchUpInside)
        }
        
    }
    
    @objc func zeroButtonTapped(){
        if resultLabel.text != "0" {
                    if let text = resultLabel.text {
                        resultLabel.text = "\(text)\(0)"
                    }
                }
    }
    @objc func numButtonTapped() {
        
    }
    
   
    

}

