//
//  LoanCalculator.swift
//  UT
//
//  Created by Mohamed El-Taweel on 9/21/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import Foundation

protocol LoanCalculating {
    func calculate(from neededMoney: Double,in yearsDuration: Int)
}

class CarLoanCalculator: LoanCalculating{
    
    private var _neededMoney: Double
    private var _yearsDuration: Int
    private var _interestPercent: Double
    
    init() {
        self._neededMoney = 0.0
        self._interestPercent = 0.0
        self._yearsDuration = 0
    }
    
    var neededMoney: Double{
        get{
            return _neededMoney
        }set{
            _neededMoney = newValue
        }
    }
    
    var yearsDuration: Int{
        get{
            return _yearsDuration
        }set{
            _yearsDuration = newValue
        }
    }
    
    var interesetAmount: Double{
        get{
            return neededMoney * _interestPercent * Double(yearsDuration)
        }
    }
    
    var totalAmount: Double{
        get{
            return neededMoney + interesetAmount
        }
    }
    
    func calculate(from neededMoney: Double, in yearsDuration: Int) {
        _neededMoney = neededMoney
        _yearsDuration = yearsDuration
        _interestPercent = calculatePercentBasedOnDuration(with: yearsDuration)
    }
    
    private func calculatePercentBasedOnDuration(with duration: Int)->Double{
        if duration > 3{
            return 0.165
        }else{
            return 0.085
        }
    }
    
    
}
