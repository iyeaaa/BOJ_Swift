infix operator **

func ** (value1: Int, value2: Int) -> Int {
    var temp: Int = value1

    for _ in 1..<value2 {
        temp *= value1
    }

    return temp
}

print(5**3) // ㅇㅇ