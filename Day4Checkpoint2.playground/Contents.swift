import UIKit
import XCTest

// Repeats are big and as
let strArray = ["the", "hill", "is", "so", "big", "it's", "as", "big", "as", "yo", "mama"]

print(strArray.count)

let setArray = Set(strArray)
print("Using the set method of finding the number of unique occurences is \(setArray.count)")

var wordOccurences: [String: Int] = [:]
var numberOfUnique = 0
for word in strArray {
    if wordOccurences[word] == 1 { continue }
    wordOccurences[word] = 1
    numberOfUnique += 1
}
print("The number of unique words should be 9 and the numberOfUnique variable is \(numberOfUnique)")
