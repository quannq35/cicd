//
//  CalculatorTests.swift
//  cicdTests
//
//  Created by Quân Nguyễn on 3/7/24.
//

import XCTest
@testable import cicd

final class CalculatorTests: XCTestCase {
    var calculatorVM: CalculatorViewModel!
    
    override func setUp() {
        super.setUp()
        calculatorVM = CalculatorViewModel()
    }
    
    override func tearDown() {
        calculatorVM = nil
        super.tearDown()
    }
    
    func testAdd() {
        let result = calculatorVM.add(a: 1, b: 1)
        XCTAssertEqual(result, 2, "Expected 1 + 1 to equal 2")
    }
    
    func testSubtract() {
        let result = calculatorVM.subtract(a: 2, b: 1)
        XCTAssertEqual(result, 2, "Expected 2 - 1 to equal 1")
    }
}
