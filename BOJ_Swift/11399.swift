let num = Int(readLine()!)!
let line = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted(by: <)

var answer = 0
var prev_sum = 0

for i in 0..<num {
    prev_sum += line[i]
    answer += prev_sum
}

print(answer)   // 성공