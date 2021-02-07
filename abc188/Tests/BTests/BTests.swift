import XCTest
import TestLibrary

final class BTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "2\n-3 6\n4 2\n", "Yes\n"),
            (#filePath, #line, "2\n4 5\n-1 -3\n", "No\n"),
            (#filePath, #line, "3\n1 3 5\n3 -6 3\n", "Yes\n"),
        ]
        try cases.forEach(solve)
    }
}