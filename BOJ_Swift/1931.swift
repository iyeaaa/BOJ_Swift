let n = Int(readLine()!)!
var meet: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: n)

for i in 0...n-1 {
    let met = readLine()!.split(separator: " ").map{Int(String($0))!}
    meet[i][0] = met[0]
    meet[i][1] = met[1]
}

meet.sort(by: {
    if $0[1] == $1[1] {
        return $0[0] < $1[0]
    }
    return $0[1] < $1[1]
})

var minStart = meet[0][1]
var result = 1

for i in 1...n-1 {
    if meet[i][0] >= minStart {
        result += 1
        minStart = meet[i][1]
    }
}

print(result)