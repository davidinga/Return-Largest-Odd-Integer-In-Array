/*
Q1. Write a function to find the largest odd integer in an array. For example, from [ 7, 9, 2, 10 ], return 9.
*/

func largestOdd(in numbers: [Int]) throws -> Int? {  
  guard numbers.count > 0 else { return nil }
  var largestOdd = Int.min
  for number in numbers where abs(number % 2) == 1 {
    largestOdd = max(largestOdd, number)
  }
  return abs(largestOdd % 2) == 1 ? largestOdd : nil
}

let test1 = [2,101]
let test2 = [(Int.min + 1), Int.min]
let test3: [Int] = []
let test4 = [2,2,2]
let test5 = [1,2,3,4,5,6,7,8,9]

let result1 = largestOdd(in: test1)
let result2 = largestOdd(in: test2)
let result3 = largestOdd(in: test3)
let result4 = largestOdd(in: test4)
let result5 = largestOdd(in: test5)

print(result1 ?? "nil")
print(result2 ?? "nil")
print(result3 ?? "nil")
print(result4 ?? "nil")
print(result5 ?? "nil")

print("num:", -111 % 2)