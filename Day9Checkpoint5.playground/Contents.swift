import UIKit
var luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

luckyNumbers = luckyNumbers.filter { curr in
    return curr % 2 == 0 // I used modulo instead of isMultiple(Of: )
}

// I used sort() instead of sorted()
luckyNumbers.sort {
    $0 < $1
}

let luckyNumbersStrings = luckyNumbers.map { curr in
    return "\(curr) is a lucky number"
}

for str in luckyNumbersStrings {
    print(str)
}

// MARK: Reset luckyNumbers

luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let luckyNumbersStrings2 = luckyNumbers.filter { curr in
    return curr % 2 == 0
}.sorted { first, second in
    first < second
}.map { curr in
    return "\(curr) is a lucky number"
}

for str in luckyNumbersStrings2 {
    print(str)
}
