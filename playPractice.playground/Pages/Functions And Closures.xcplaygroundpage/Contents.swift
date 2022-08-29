//: [Previous](@previous)

import Foundation

    //let myrange = 10..<20
    //
    //for item in myrange.reversed() {
    //    print(item)
    //}
    //var y = 0
    //repeat {
    //    y += 5
    //    print("y is \(y)")
    //}while y < 50
func serviceCharge(mealCost: Int) -> Int {
        //let mealCost = 50
    let serviceCost = mealCost/10
    return serviceCost
}
let l = serviceCharge(mealCost:100)

    // nested functions
func calculateMonthlyPayment(carPrice: Double, downPayment: Double, interestRate: Double, paymentTerm: Double) ->Double{
    func loanAmount() ->Double {
        return carPrice - downPayment
    }
    func totalInterest()->Double{
        return interestRate * paymentTerm
    }
    func numberOfMonths()->Double{
        return paymentTerm * 12
    }
    return((loanAmount() + loanAmount() * totalInterest() / 100 ) / numberOfMonths())
}

    //function as arguement label
func makePi()->(()->Double){
    func generatePi()->Double{
        return 22.0/7.0
    }
    return generatePi
}
let pi = makePi()
print(pi())

    //using functions as a parameter
func isThereAMatch(listOfNumbers: [Int], condition: (Int)->Bool)->Bool{
        //print(condition(listOfNumbers[1]))
    for item in listOfNumbers{
        if condition(item){
            return true
        }
    }
    return false
}

func oddNumber(number: Int)->Bool{
    return(number%2) > 0
}
var numList = [2,4,6,7]
isThereAMatch(listOfNumbers: numList, condition: oddNumber)

    //using guard statements
func buySomething(itemValueEntered itemValueField:String, cardBalance:Int) ->Int{
    guard let itemValue = Int(itemValueField) else{
        print("error in item value")
        return cardBalance
    }
    let remainingBalance = cardBalance - itemValue
    return remainingBalance
}
print(buySomething(itemValueEntered: "10", cardBalance: 50))
print(buySomething(itemValueEntered: "blue", cardBalance: 50))

    //Closures
var numberArray = [2,4,8,7]
let myClosure = {(number: Int)-> Int in
    let result = number * number
    return result
}
let mappedNumbers = numberArray.map(myClosure)
var testNumbers = [2,4,6,7]
var mappedTestNumbers = [Int]()
mappedTestNumbers = testNumbers.map({(number: Int )-> Int in
    number * number
})
print(mappedTestNumbers)

mappedTestNumbers = testNumbers.map{number in
    number * number
}
print(mappedTestNumbers)

mappedTestNumbers = testNumbers.map{ $0 * $0 }

//: [Next](@next)
