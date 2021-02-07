import XCTest
import TestLibrary

final class BTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "3\n0 0\n1 2\n2 1\n", "2\n"),
            (#filePath, #line, "1\n-691 273\n", "0\n"),
            (#filePath, #line, "10\n-31 -35\n8 -36\n22 64\n5 73\n-14 8\n18 -58\n-41 -85\n1 -88\n-21 -85\n-11 82\n", "11\n"),
        ]
        try cases.forEach(solve)
    }
}