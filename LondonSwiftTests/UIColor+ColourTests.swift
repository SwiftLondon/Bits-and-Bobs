import XCTest
@testable import LondonSwift

class UIColor_ColourTests: XCTestCase {

    func testU() {
        let exampleColour = UIColour(white: 0.9, alpha: 1.0)
        XCTAssertNotNil(exampleColour, "Should be able to create a ColoUr")
    }
}
