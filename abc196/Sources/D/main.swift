// D - Hanjo
// https://atcoder.jp/contests/abc196/tasks/abc196_d
// 実行制限時間: 2.0 sec
import Foundation

struct Array2D<Element> {
    let n1: Int
    let n2: Int
    var elements: [Element]
    
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

let (H, W, A, B): (Int, Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!, Int(l[3])!) }()

var ans = 0

func dfs(x: Int, y: Int, a: Int, used: Array2D<Bool>) {
    
    // (0,0) から x 方向にインクリメント
    // (0,W) まで到達したら (y,0) から再スタート
    // (H,W) まで到達したら 畳の数を整合してマッチしていたら +1 する
    if H == y {
        if a == A {
//            print(x,y,a,used)
            ans += 1
        }
        return
    }
    
    // よこにはみ出した
    if x == W {
        dfs(x: 0, y: y+1, a: a, used: used)
        return
    }
    
    // すでに敷かれている
    if used[x,y] {
        dfs(x: x+1, y: y, a: a, used: used)
        return
    }
    
    // 縦に敷いた場合
    if y+1 < H, !used[x, y+1] {
        var v_used = used
        v_used[x, y] = true
        v_used[x, y+1] = true
        dfs(x: x+1, y: y, a: a+1, used: v_used)
    }
    // 横に敷いた場合
    if x+1 < W, !used[x+1,y] {
        var h_used = used
        h_used[x, y] = true
        h_used[x+1, y] = true
        dfs(x: x+1, y: y, a: a+1, used: h_used)
    }
    // １マスに敷いた場合
    var c_used = used
    c_used[x, y] = true
    dfs(x: x+1, y: y, a: a, used: c_used)
}
// また畳が置かれてない状態からスタートする
dfs(x: 0, y: 0, a: 0, used: Array2D(repeating: false, W, H))
print(ans)
