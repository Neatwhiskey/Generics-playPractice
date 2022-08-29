import UIKit
//
//struct Stack<Element>{
//    var items: [Element] = []
//    mutating func push(_ item: Element){
//        items.append(item)
//    }
//
//    mutating func pop()-> Element{
//        return items.removeLast()
//    }
//}
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
//3<2
//
//enum Planet: Int{
//    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
//    static subscript(n: Int)-> Planet{
//        Planet(rawValue: n)!
//    }
//}
//
//let mars = Planet[4]
//print(mars)
//
//class shoppingList{
//    var name: String?
//    var quantity = 1
//    var purchased = false
//    init(quantity: Int, purchased: Bool){
//        self.quantity = quantity
//        self.purchased = purchased
//    }
//}
struct Size{
    var Width = 0.0, height = 0.0
}
struct Point{
    var x = 0.0, y = 0.0
}
struct Rect{
    var origin = Point(), size = Size()
    init(){}
    init(origin: Point, size:Size){
        self.origin = origin
        self.size = size
    }
    init(center:Point, size: Size){
        let originX = center.x - (size.Width/2)
        let originY = center.y - (size.height/2)
        self.init(origin: Point(x: originX, y: originY) ,size: size)
    
}
}
let o = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(Width: 3.0, height: 3.0))
