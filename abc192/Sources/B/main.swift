// B - uNrEaDaBlE sTrInG
// https://atcoder.jp/contests/abc192/tasks/abc192_b
import Foundation

var ans = true
let s = readLine()!

for i in (0..<s.count) {
    if i.isMultiple(of: 2) {
        if "abcdefghijklmnopqrstuvwxyz".contains(s[i]) {
        } else {
            ans = false
        }
    } else {
        if "ABCDEFGHIJKLMNOPQRSTUVWXYZ".contains(s[i]) {
        } else {
            ans = false
        }
    }
}

let ALPHABETS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let alphabets = "abcdefghijklmnopqrstuvwxyz"

print(ans ? "Yes" : "No")


extension String {
    // "ABC"[1] -> "B"
    subscript(i: Int) -> Character {
        get {
            self[index(at: i)]
        }
        set(char) {
            var characters = Array(self)
            characters[i] = char
            self = String(characters)
        }
    }
    func index(at offset: Int) -> String.Index { index(startIndex, offsetBy: offset) }
    // "ABC".swapAt(0, 1) -> "BAC"
    mutating func swapAt(_ index1: Int, _ index2: Int) {
        var characters = Array(self)
        characters.swapAt(index1, index2)
        self = String(characters)
    }
}
