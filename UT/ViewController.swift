//
//  ViewController.swift
//  UT
//
//  Created by Mohamed El-Taweel on 9/21/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loanValuelabel: UILabel!
    @IBOutlet weak var interestValueLabel: UILabel!
    @IBOutlet weak var totalAmountValueLabel: UILabel!
    @IBOutlet weak var neededMoneyTextField: UITextField!
    @IBOutlet weak var durationTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!

    var carLoanCalculator = CarLoanCalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        calculateButton.layer.cornerRadius = 8
    }

    @IBAction func onCalculateButtonTapped(_ sender: UIButton) {
        let neededMoneyInput = Double(neededMoneyTextField.text ?? "0.0") ?? 0.0
        let durationInput = Int(durationTextField.text ?? "0") ?? 0
        carLoanCalculator.calculate(from: neededMoneyInput, in: durationInput)
        loanValuelabel.text = "\(String(format: "%.02f", carLoanCalculator.neededMoney))"
        interestValueLabel.text = "\(String(format: "%.02f", carLoanCalculator.interesetAmount))"
        totalAmountValueLabel.text = "\(String(format: "%.02f", carLoanCalculator.totalAmount))"
    }
    
    

}

