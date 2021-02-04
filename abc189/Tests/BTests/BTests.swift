import XCTest
import TestLibrary

final class BTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "2 15\n200 5\n350 3\n", "2\n"),
            (#filePath, #line, "2 10\n200 5\n350 3\n", "2\n"),
            (#filePath, #line, "3 1000000\n1000 100\n1000 100\n1000 100\n", "-1\n"),
        ]
        try cases.forEach(solve)
    }
}