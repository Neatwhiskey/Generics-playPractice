//: [Previous](@previous)

import Foundation
import Darwin

protocol Container{
    associatedtype Item
    
    mutating func append(_ item: Item)
    var count: Int {get}
    subscript(i: Int) -> Item {get}
}

protocol suffixableContainer: Container{
    associatedtype suffix: suffixableContainer where suffix.Item == Item
    func suffix(_ size: Int) -> suffix
}

extension Stack: suffixableContainer{
   // typealias suffix = Stack
    
    func suffix(_ size: Int) -> Stack {
        var result = Stack()
        for index in (count-size)..<count{
            result.append(self[index])
        }
        return result
    }
    
}

var stackOfInt = Stack<Int>()
stackOfInt.append(10)
stackOfInt.append(20)
stackOfInt.append(30)
let suffix = stackOfInt.suffix(3)
//struct IntStack: Container{
//    typealias Item = Int
//
//    var items: [Int] = []
//    mutating func push(_ item: Int){
//        items.append(item)
//    }
//
//    mutating func pop()-> Int {
//        return items.removeLast()
//    }
//
//    mutating func append(_ item: Int) {
//        self.push(item)
//    }
//    var count: Int{
//        return items.count
//    }
//    subscript(i: Int) -> Int {
//        return items[i]
//    }
//
//}
//
struct Stack<Element>: Container{
   // typealias Item = Element

    var items: [Element] = []
    mutating func push(_ item: Element){
        items.append(item)
    }

    mutating func pop()-> Element{
        return items.removeLast()
    }
    typealias Item = Element
    mutating func append(_ item: Element) {
        self.push(item)
    }
    var count: Int{
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}
//
//
//var stackOfStrings = Stack<String>()
//stackOfStrings.push("uno")
//stackOfStrings.push("duos")
//stackOfStrings.push("tres")
//stackOfStrings.push("cuatro")
//
//let fromzTop = stackOfStrings.pop()
//
//extension Stack{
//    var topItem: Element? {
//        return items.isEmpty ? nil : items[items.count - 1]
//    }
//}
//
//if let topItem = stackOfStrings.topItem{
//    print("The top item is \(topItem)")
//}
//
//
//func findIndex<T: Equatable>(ofString valueToFind: T, in array:[T]) -> Int?{
//    for (index, value) in array.enumerated(){
//        if value == valueToFind{
//            return index
//        }
//    }
//    return nil
//}
//
//let strings = ["cat", "cow", "elephant", "dog", "lion", "rat","goat"]
//if let foundIndex = findIndex(ofString: "lion", in: strings){
//    print("index of lion is \(foundIndex)")
//}
//
//extension Array: Container{
//    var count: Int{
//        return 0
//    }
//}




//: [Next](@next)
