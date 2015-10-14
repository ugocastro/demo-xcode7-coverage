import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    func testSum() {
        let result = Math.sum(x: 2, y: 3)
        XCTAssertEqual(5, result)
    }
    
    func testSubtract() {
        let result = Math.subtract(x: 10, y: 40)
        XCTAssertEqual(-30, result)
    }
    
    func testMultiply() {
        let result = Math.multiply(x: -5, y: 30)
        XCTAssertEqual(-150, result)
    }
    
    func testDivideByNonZeroValue() {
        var exceptionWasThrown = false
        var result: Float? = nil
        do {
            result = try Math.divide(x: -5, y: 2)
        }            catch {
            exceptionWasThrown = true
        }

        XCTAssertFalse(exceptionWasThrown)
        XCTAssertEqual(-2.5, result)
    }
    

    func testDivideByZero() {
        var exceptionWasThrown = false
        var result: Float? = nil
        do {
            result = try Math.divide(x: 20, y: 0)
        } catch Exception.DivideByZero {
            exceptionWasThrown = true
        } catch {
            
        }

        XCTAssertTrue(exceptionWasThrown)
        XCTAssertNil(result)
    }
}
