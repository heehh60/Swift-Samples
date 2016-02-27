var array = [2, 3, 1, 5, 4];

// 함수 타입이 (Int, Int) -> Bool 인 함수
func sortFunc(a : Int, b : Int) -> Bool {
   return a < b
}

let sorted = array.sort(sortFunc)


// Inline - Closure Expression
let sorted2 = array.sort({ (a:Int, b:Int) -> Bool in
   return a < b
})
sorted2


// 타입 선언 생략
let sorted3 = array.sort( { a, b -> Bool in return a < b } )
print(sorted3)

// 1줄인 경우 return 생략
let sorted4 = array.sort( { a, b -> Bool in a < b } )
print(sorted4)

// 반환 타입 선언 생략
let sorted5 = array.sort({ a, b in a < b })
print(sorted5)

// 파라미터 선언 생략
let sorted6 = array.sort({ $0 < $1 })
print(sorted6)

// Trailing
let sorted7 = array.sort{ $0 < $1 }
print(sorted7)

// Operator Function
let sorted8 = array.sort( < )
print(sorted8)