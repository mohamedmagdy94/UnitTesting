//
//  CarLoanCalculatorTests.swift
//  UTTests
//
//  Created by Mohamed El-Taweel on 9/21/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import XCTest
@testable import UT

class CarLoanCalculatorTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testLoanCalculatingInLessThanThreeYears(){
        var loanCalculator = CarLoanCalculator()
        loanCalculator.calculate(from: 10000.0, in: 1)
        var isLoanAmountTrue = loanCalculator.neededMoney == 10000.0
        var isInteresetAmountTrue = loanCalculator.interesetAmount == 850.0000000000001
        var isTotalAmountTrue = loanCalculator.totalAmount == 10850.0
        XCTAssert(isLoanAmountTrue && isInteresetAmountTrue && isTotalAmountTrue)

    }
    
    func testLoanCalculatingInMoreThanThreeYears(){
        var loanCalculator = CarLoanCalculator()
        loanCalculator.calculate(from: 10000.0, in: 5)
        var isLoanAmountTrue = loanCalculator.neededMoney == 10000.0
        var isInteresetAmountTrue = loanCalculator.interesetAmount == 8250.0000000000001
        var isTotalAmountTrue = loanCalculator.totalAmount == 18250.0
        XCTAssert(isLoanAmountTrue && isInteresetAmountTrue && isTotalAmountTrue)

    }

}
