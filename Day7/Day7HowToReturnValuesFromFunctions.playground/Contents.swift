import UIKit

func doTwoStringsContainTheSameLetters(str1: String, str2: String) -> Bool {
    let str1Sorted = str1.sorted()
    let str2Sorted = str2.sorted()
    return str1 == str2
}

var exStr1 = "hdeeizz"
var exStr2 = "hdeeeiz"
print(doTwoStringsContainTheSameLetters(str1: exStr1, str2: exStr2))

exStr1 = "The Dog Slipped On Ice"
exStr2 = "The Dog Ran On Mud"
print(doTwoStringsContainTheSameLetters(str1: exStr1, str2: exStr2))

exStr1 = "The Dog"
exStr2 = "the dog"
print(doTwoStringsContainTheSameLetters(str1: exStr1, str2: exStr2))

exStr1 = "the dog"
exStr2 = "the dog"
print(doTwoStringsContainTheSameLetters(str1: exStr1, str2: exStr2))

exStr1 = ""
exStr2 = ""
print(doTwoStringsContainTheSameLetters(str1: exStr1, str2: exStr2))

func pythag(a: Double, b: Double) -> Double {
    return sqrt(a*a+b*b)
}

print(pythag(a: 3, b: 4))
