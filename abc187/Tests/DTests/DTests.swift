import XCTest
import TestLibrary

final class DTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "4\n2 1\n2 2\n5 1\n1 3\n", "1\n"),
            (#filePath, #line, "5\n2 1\n2 1\n2 1\n2 1\n2 1\n", "3\n"),
            (#filePath, #line, "1\n273 691\n", "1\n"),
        ]
        try cases.forEach(solve)
    }
}