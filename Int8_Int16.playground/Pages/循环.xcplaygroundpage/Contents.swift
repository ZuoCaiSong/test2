//: [Previous](@previous)

import Foundation

//1.for in 循环

//  ... 这三个点叫做区间运算法（区间符号）Forms a closed range that contains both start and end. Requires:start <= end.


for 被乘数 in 1...5{ //被乘数,不需要自给定义类型，只需要写出名字就可以了，系统会根据in 后面的类型，推断出来
    
    print("\(被乘数) X 5 = \(被乘数 * 5)")
}

//在循环时，不需要用到 in 前面的这个变量时，可以直接用下划线代替“_”

let 底  = 2

let 幂 = 10

var 二的10次方 = 1
for _ in 1..<11{  //包含开始不包含结尾
    
    二的10次方 *= 2
    
}

二的10次方


//用for循环遍历字典

let dic = ["jj":"oo","xx":"pp"]

for (key,value) in dic{
    
    print("\(key):\(value) ")
}



