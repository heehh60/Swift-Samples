import Foundation

let filePath = "/Users/wannabewize/Projects/TAcademy/Swift-Samples/19.Foundation/devices.json"
let jsonData = NSData(contentsOfFile: filePath)!

// 에러 발생시 nil
if let result = try? NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions(rawValue: 0)) {
   if let device = result["device"] as? NSArray,
      let ipad = device[1] as? NSDictionary,
      let spec = ipad["spec"] as? NSDictionary,
      let cpu = spec["cpu"] {
         print(cpu)
   }
}
else {
   print("파싱 실패")
}
