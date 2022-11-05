import XCTest
@testable import ByMe

final class ByMeTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MyApps.list, [AnApp(name: "Test App", url: "", appicon: "")])
    }
}
