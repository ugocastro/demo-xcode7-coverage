import XCTest

class CalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup 
        // will make sure it happens for each test method.
         XCUIApplication().launch()
    }
    
    func testDivideByZero() {
        
        let app = XCUIApplication()
        let basicCalculatorElementsQuery = app.otherElements
            .containingType(.StaticText, identifier:"Basic Calculator")
        let textField = basicCalculatorElementsQuery
            .childrenMatchingType(.TextField).elementBoundByIndex(0)
        textField.tap()
        textField.typeText("1")
        
        let textField2 = basicCalculatorElementsQuery
            .childrenMatchingType(.TextField).elementBoundByIndex(1)
        textField2.tap()
        textField2.typeText("0")
        app.buttons["/"].tap()
        
        
        XCTAssertNotNil(app.alerts["Alert"],
            "Alert should be presented at screen")
    }
}
