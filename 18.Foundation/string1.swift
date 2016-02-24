import Foundation

//
// 문자열 선언
//

var nsStr : NSString = "Hello, Foundation"
// Swift의 String 타입의 문자열
var swiftStr = "Hello, Swift"

//
// 문자열 변환
//

// NSString을 String으로 – as 필요
var str1 : String = nsStr as String

// Swift String에서 NSString으로 타입 변환
var str2 : NSString = swiftStr


//
// 문자열 포맷
//


var formattedStr1 = NSString(format: "%d + %d = %d", 1, 2, (1+2))
var formattedStr2 = NSString(format: "%@ %@", "Hello", "Foundation")

//
// 문자열 비교 : equality
//


let nsStr1 : NSString = "Hello Foundation"
let nsStr2 : NSString = "Hello Foundation"
let swiftStr2 = "Hello Foundation"

nsStr1 == nsStr2
nsStr1 === nsStr2
nsStr1.isEqualToString(swiftStr2)
//swiftStr2.isEqualToString(nsStr1)



//
// 문자열 비교 : compare
//

let numStr1 : NSString = "1"
let numStr2 = "09"

// Descending : “1” > “09”
let ret1 = numStr1.compare(numStr2)
ret1 == NSComparisonResult.OrderedDescending

// Ascending : 1 < 09
let ret2 = numStr1.compare(numStr2, options: NSStringCompareOptions.NumericSearch)
ret2 == NSComparisonResult.OrderedAscending


let ret3 = "HELLO".compare("hello", options: NSStringCompareOptions.CaseInsensitiveSearch)
ret3 == NSComparisonResult.OrderedSame

//
// 문자열 길이
//

nsStr.length
swiftStr.characters.count