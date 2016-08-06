//: [Previous](@previous)

import Foundation


let someSwitch: Character = "我"


/*
 *注意：
   1. swify中的switch一旦匹配到相同情况，默认就会停止往下匹配运行，即只运行最先匹配以前的语句，所以不需要去加break;
   2. swify中的switch的每一个case，后面必须要有操作语句，没有的话，会报语法错误
   3. swify中的switch，如果有多重情况，（如下，多个字母是元音字母）用英文逗号“,”进行隔开
 */
switch someSwitch {
    
    case "a","e","i","0","u":
    print("\(someSwitch)是元音字母")
    
default:
    print("\(someSwitch)是辅音字母")
    
}

