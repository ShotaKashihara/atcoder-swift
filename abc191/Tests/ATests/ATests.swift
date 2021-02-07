import XCTest
import TestLibrary

final class ATests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "10 3 5 20\n", "Yes\n"),
            (#filePath, #line, "10 3 5 30\n", "No\n"),
        ]
        try cases.forEach(solve)
    }
}