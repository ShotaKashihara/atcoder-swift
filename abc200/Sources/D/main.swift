// D - Happy Birthday! 2
// https://atcoder.jp/contests/abc200/tasks/abc200_d
// 実行制限時間: 2.0 sec
import Foundation

struct Array2D<Element> {
    let n1: Int
    let n2: Int
    private var elements: [Element]
    
    init(repeating: Element, _ n1: Int, _ n2: Int) {
        self.n1 = n1
        self.n2 = n2
        self.elements = [Element](repeating: repeating, count: n1 * n2)
    }
    
    subscript(i: Int, j: Int) -> Element {
        get {
            elements[i * n2 + j]
        }
        set {
            elements[i * n2 + j] = newValue
        }
    }
}

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

// dp[i,k]: [0,i) 番目までの要素を使って和が K になるか
let K = 199 // 余りの最大は 199
var dp = Array2D(repeating: 0, N + 1, K + 1)
dp[0, 0] = 1

var sample = Set<[Int]>.init()

for i in 0..<N {
    for j in 0...K {
        dp[i+1, j] += dp[i, j]
        if (j - A[i] + 200) % 200 >= 0 {
            let before = dp[i+1, j]
            dp[i+1, j] += dp[i, (j - A[i] + 200) % 200]
            if before < dp[i+1, j] {
                // メモする
                sample.insert([])
            }
        }
    }
}

var sum_sample = -1
for i in 0..<200 {
    if dp[N, i] > 1 {
        // 和の余りが i になる組み合わせの数が2以上なら答え
        sum_sample = i
        break
    }
}

print(sum_sample != -1 ? "Yes" : "No")

if sum_sample != -1 {
    // 和が sum_sample になる例を１パターンつくる
}
