import UIKit

enum SquareRootError: Error {
    case outOfBounds, noRoot
}

func findSquareRoot(of num: Int) throws -> Int {
    if num < 1 || num > 10_000 {
        throw SquareRootError.outOfBounds
    }
    for checkNum in 1..<num { // I should have done 1...100 because that would cover everything in the range of 1-10_000
        if checkNum * checkNum == num {
            return checkNum
        }
    }
    throw SquareRootError.noRoot
}

// Works fine
do {
    try findSquareRoot(of: 9)
} catch {
    print(error.localizedDescription)
}

// noRoot error
do {
    try findSquareRoot(of: 10)
} catch {
    print(error.localizedDescription)
}

do {
    try findSquareRoot(of: 11)
} catch {
    print(error.localizedDescription)
}

// Works fine
do {
    try findSquareRoot(of: 16)
} catch {
    print(error.localizedDescription)
}


// outOfBounds error
do {
    try findSquareRoot(of: -1)
} catch {
    print(error.localizedDescription)
}

do {
    try findSquareRoot(of: 100_999)
} catch {
    print(error.localizedDescription)
}
