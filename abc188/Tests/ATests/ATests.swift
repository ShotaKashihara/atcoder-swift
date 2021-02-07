import XCTest
import TestLibrary

final class ATests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "3 5\n", "Yes\n"),
            (#filePath, #line, "16 2\n", "No\n"),
            (#filePath, #line, "12 15\n", "No\n"),
        ]
        try cases.forEach(solve)
    }
}