import XCTest
import TestLibrary

final class _053Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [

        ]
        try cases.forEach(solve)
    }
}