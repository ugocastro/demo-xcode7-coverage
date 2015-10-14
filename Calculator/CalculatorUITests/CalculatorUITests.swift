import XCTest

class CalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    func testSum() {
        let basicCalculatorElementsQuery = XCUIApplication().otherElements.containingType(.StaticText, identifier:"Basic Calculator")
        let textField = basicCalculatorElementsQuery.childrenMatchingType(.TextField).elementBoundByIndex(0)
        textField.tap()
        textField.typeText("22")
        
        let textField2 = basicCalculatorElementsQuery.childrenMatchingType(.TextField).elementBoundByIndex(1)
        textField2.tap()
        textField2.typeText("63")
        basicCalculatorElementsQuery.buttons["+"].tap()
        
        XCTAssertEqual("85.0", basicCalculatorElementsQuery.childrenMatchingType(.TextField).elementBoundByIndex(2).value as? String)
    }
    
    func testSubtract() {
        let basicCalculatorElementsQuery = XCUIApplication().otherElements.containingType(.StaticText, identifier:"Basic Calculator")
        let textField = basicCalculatorElementsQuery.childrenMatchingType(.TextField).elementBoundByIndex(0)
        textField.tap()
        textField.typeText("5")
        
        let textField2 = basicCalculatorElementsQuery.childrenMatchingType(.TextField).elementBoundByIndex(1)
        textField2.tap()
        textField2.typeText("9")
        basicCalculatorElementsQuery.buttons["-"].tap()
        
        XCTAssertEqual("-4.0", basicCalculatorElementsQuery.childrenMatchingType(.TextField).elementBoundByIndex(2).value as? String)
    }
    
    func testDivideByZero() {        
        let app = XCUIApplication()
        let basicCalculatorElementsQuery = app.otherElements.containingType(.StaticText, identifier:"Basic Calculator")
        let textField = basicCalculatorElementsQuery.childrenMatchingType(.TextField).elementBoundByIndex(0)
        textField.tap()
        textField.typeText("1")
        
        let textField2 = basicCalculatorElementsQuery.childrenMatchingType(.TextField).elementBoundByIndex(1)
        textField2.tap()
        textField2.typeText("0")
        app.buttons["/"].tap()
        
        
        XCTAssertNotNil(app.alerts["Alert"], "Alert should be presented at screen")
    }
}
