import XCTest
import TestLibrary

final class FTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "3 2\n1 2\n1 3\n", "2\n"),
            (#filePath, #line, "4 6\n1 2\n1 3\n1 4\n2 3\n2 4\n3 4\n", "1\n"),
            (#filePath, #line, "10 11\n9 10\n2 10\n8 9\n3 4\n5 8\n1 8\n5 6\n2 5\n3 6\n6 9\n1 9\n", "5\n"),
            (#filePath, #line, "18 0\n", "18\n"),
        ]
        try cases.forEach(solve)
    }
}