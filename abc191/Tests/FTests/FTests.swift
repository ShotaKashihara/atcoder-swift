import XCTest
import TestLibrary

final class FTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "3\n6 9 12\n", "2\n"),
            (#filePath, #line, "4\n8 2 12 6\n", "1\n"),
            (#filePath, #line, "7\n30 28 33 49 27 37 48\n", "7\n"),
        ]
        try cases.forEach(solve)
    }
}