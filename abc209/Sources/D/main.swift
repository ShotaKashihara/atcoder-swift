// D - Collision
// https://atcoder.jp/contests/abc209/tasks/abc209_d
// 実行制限時間: 2.0 sec
import Foundation

let (N, Q): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

typealias Graph = [Vertex]
typealias Vertex = [Int]

var G = Graph(repeating: [], count: N)

for _ in 0..<N-1 {
    let (a, b): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
    G[a - 1].append(b - 1)
    G[b - 1].append(a - 1)
}

/*
  Deque (pronounced "deck"), a double-ended queue

  This particular implementation is simple but not very efficient. Several
  operations are O(n). A more efficient implementation would use a doubly
  linked list or a circular buffer.
*/
public struct Deque<T> {
  private var array = [T]()

  public var isEmpty: Bool {
    return array.isEmpty
  }

  public var count: Int {
    return array.count
  }

  public mutating func enqueue(_ element: T) {
    array.append(element)
  }

  public mutating func enqueueFront(_ element: T) {
    array.insert(element, at: 0)
  }

  public mutating func dequeue() -> T? {
    if isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }

  public mutating func dequeueBack() -> T? {
    if isEmpty {
      return nil
    } else {
      return array.removeLast()
    }
  }

  public func peekFront() -> T? {
    return array.first
  }

  public func peekBack() -> T? {
    return array.last
  }
}

var colors = [Bool?].init(repeating: nil, count: N)
var queue = Deque<Int>()
queue.enqueue(0)
colors[0] = false

while let q = queue.dequeue() {
    for next in G[q] {
        guard colors[next] == nil else { continue }
        colors[next] = !colors[q]!
        queue.enqueue(next)
    }
}

for _ in 0..<Q {
    let (c, d): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

    print(colors[c - 1] == colors[d - 1] ? "Town" : "Road")
}
