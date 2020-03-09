import Foundation

struct cin {
    static var number: Int {
        return Int(readLine()!)!
    }

    static var pair: (Int, Int) {
        let line = readLine()!.components(separatedBy: " ")
        return (Int(line[0])!, Int(line[1])!)
    }

    static var line: String {
        return readLine()!
    }

    static func array() -> [String] {
        return line.components(separatedBy: " ")
    }

    static func array() -> [Int] {
        return line.components(separatedBy: " ").map { Int($0)! }
    }
}

extension Int {
    var digits: [Int] {
        Array(String(self)).map { Int(String($0))! }
    }
}

extension Array where Element == Int {
    var sum: Int {
        return self.reduce(0, +)
    }
}

LanguageTest202001.abc083_b.main()
