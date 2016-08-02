//: Playground - noun: a place where people can play

import UIKit

//1.字典的初始化


var Dic = ["key0":"value0","key1":"value1"] //可以省略var Dic : [String: String] = ["key0":"value0","key1":"value1"] ,系统已经自动知道字典的类型了。

var dic = [Int:String]()


dic.isEmpty

dic[1] = "zcs"
dic[2] = "wsx"
dic[3] = "td"

dic
//遍历 key

let keyArray = [Int](dic.keys)

for key in keyArray{
    
    print(key)
}


//遍历 value
let valueArray = dic.values

for value in valueArray{
    
    print(value)
}

dic.count

//更新字典的内容，返回一个可选类型，可以用if进行绑定,如果更新成功，则返回key所对应的旧的value，不成功则为空

if let  oldValue =   dic.updateValue("zuocaisong", forKey: 1){
    
    if let newValue = dic[1] {
        
        print("原来的\(oldValue)被\(newValue)替代") //去掉了operation
    }
    
}
else{
    
    print("更新失败,字典中不存在该key")
}

//删除字典的时候，返回的也是一个可选类型的值，如果删除成功，则返回当前删除的元素对应的value，否则为空nil

if let removeValue = dic.removeValueForKey(3){
    
    print("\(removeValue)就是删除的值")
}
else{
     print("删除失败,")
}























