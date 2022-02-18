import Foundation

//dividend-ตัวตั้ง / divisor-ตัวหาร / quotient-ผลหาร / fraction-เศษ

//sol 1
var input:[String:Int] = ["dividend":0,"divisor":0]
var output:[String:Int] = ["quotient":0,"fraction":0]
var output_message:String = ""

print("Enter Dividend Number : ", terminator: "")
input["dividend"] = Int(readLine()!)!
print("Enter Divisor Number : ", terminator: "")
input["divisor"] = Int(readLine()!)!

if input["divisor"]! > 0 {
  output["fraction"] = input["dividend"]!
  for _ in 1...(input["dividend"]! > 0 ? input["dividend"]! : 1) {
    if output["fraction"]! < input["divisor"]! {
      break
    }
    output["fraction"]! -= input["divisor"]!
    output["quotient"]! += 1
  }
  output_message = "Quotient : \(output["quotient"]!) | Fracion : \(output["fraction"]!)"
}else{
  output_message = "Cannot divide by Zero !!!"
}

print("Result of \(input["dividend"]!) / \(input["divisor"]!) is \(output_message)")

////////////////////////////////////////////////////////////////////////

//sol 2
// var input:[String:Int] = ["number1":0,"number2":0]
// var result:Int = 0

// repeat {
//   print("Enter Number 1 : ", terminator: "")
//   input["number1"] = Int(readLine()!)!
// } while input["number1"]! < 0

// repeat {
//   print("Enter Number 2 : ", terminator: "")
//   input["number2"] = Int(readLine()!)!
// } while input["number2"]! <= 0

// while input["number1"]! >= input["number2"]! {
//   input["number1"] = input["number1"]! - input["number2"]!
//   result += 1
// }

// print("Result is \(result) fracion \(input["number1"]!)")