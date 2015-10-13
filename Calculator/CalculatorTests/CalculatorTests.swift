import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    func testSum() {
        let result = Operation.sum(x: 2, y: 3)
        XCTAssertEqual(5, result)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
