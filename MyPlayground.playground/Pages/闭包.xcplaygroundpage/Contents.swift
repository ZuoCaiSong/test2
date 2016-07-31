//
//  main.swift
//  闭包1
//
//  Created by 阿K on 16/6/15.
//  Copyright © 2016年 阿K. All rights reserved.
//

import Foundation

print("Hello, World!")


//类似于oc中的block

/**

1.一组预先准备好的代码
2.可以当作参数传递
3.在需要的时候执行
oc中的block类似于匿名函数
*/

func sum(num1 x:Int, num2 y:Int) ->Int{
    
    return x+y;
}
//sum(10, y: 20)
sum(num1: 19, num2: 21)

//在swift,变量能够直接纪录函数，很灵活，仅供体验
let sumfunc = sum

//执行函数
//sumfunc(5,y: 6)
sumfunc(num1: 16, num2: 26)


sumfunc(num1: 16, num2: 24)




//闭包的定义

/*
* 1.行参，返回值，代码都包含在 ｛｝中
*/

let demoFunc = {

    print("hello")
}

//执行闭包

demoFunc()

// in就是区分函数定义和代码实现
// 格式：｛（带外部参数的行参列表）－> 返回类型 in 代码实现｝
let demoFunc2 = {(num1 x:Int,num2 y:Int) -> Int in
    
    return x + y
}
//执行闭包

demoFunc2(num1 : 20,num2: 30)



print("今天完成了swify中github的上传")














