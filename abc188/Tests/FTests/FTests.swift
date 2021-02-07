import XCTest
import TestLibrary

final class FTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "3 9\n", "3\n"),
            (#filePath, #line, "7 11\n", "3\n"),
            (#filePath, #line, "1000000000000000000 1000000000000000000\n", "0\n"),
        ]
        try cases.forEach(solve)
    }
}