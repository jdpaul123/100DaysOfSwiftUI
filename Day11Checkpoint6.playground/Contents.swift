import UIKit

struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int

    mutating func changeGearUp() {
        if currentGear < 10 {
            currentGear += 1
        }
    }
    mutating func changeGearDown() {
        if currentGear > 1 {
            currentGear -= 1
        }
    }

    init(model: String, numberOfSeats: Int, currentGear: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = currentGear
        if currentGear > 10 || currentGear < 1 {
            self.currentGear = 1
        }
    }
}

var firstCar = Car(model: "Outback", numberOfSeats: 5, currentGear: 2)
print(firstCar.currentGear)
firstCar.changeGearUp()
print(firstCar.currentGear)
for num in 1...20 {
    firstCar.changeGearUp()
}
print(firstCar.currentGear)
firstCar.changeGearDown()
print(firstCar.currentGear)
for num in 1...30 {
    firstCar.changeGearDown()
}
print(firstCar.currentGear)

print(firstCar.model)
print(firstCar.numberOfSeats)
