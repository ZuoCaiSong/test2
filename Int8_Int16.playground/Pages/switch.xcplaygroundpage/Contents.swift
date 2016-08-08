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

//switch 区间匹配 ...从这个也可以看出来，当count 与switch匹配时，就会跳出switch, 其中case当中的代码块不需要加括号

 let count = 3

switch count{

case 0...3:
    print("count = 0...3")
    print("count = 0...3")
    print("count = 0...3")
case 3...6:
    print("count = 3...6")
    print("count = 3...6")
    print("count = 3...6")
default:
    print("\(someSwitch)是辅音字母")

}


//switch 与元祖tuple 进行匹配，对于任意值时，在swify中用 "_",表示

let 坐标 = (1,3)

switch 坐标{
    
case (0,0): "坐标原点"
 
case(_,0): "在x轴上"
case(0,_): "在y轴上"
case(-2...2,-2...3): "在指定的区域内"
    
default: "非指定区域"
    
}


// switch 值绑定 ,其中x,和y都是临时变量，即值绑定变量职能在你绑定的case中用，其他地方不能使用
let point = (1,1);

switch point{
    
case(let x,0): "x轴上的值是\(x)"
case(0,let y): "y轴上的值是\(y)"
    
case(let x,let y): "x轴上的值是\(x),y轴上的值是\(y)"
    
//default: "other"  上面一个case代替了case
    
}


//switch 值绑定，用where进行筛选,where相当于if自己的理解，但此处不能用if

let point2 = (0,2)

switch point2 {

case let (x,y) where x>0 && y>0 : "\(x),\(y)在第一象限"
case let (x,y) where x<0 && y>0 : "\(x),\(y)在第二象限"
case let (x,y) where x<0 && y<0 : "\(x),\(y)在第三象限"
case let (x,y) where x>0 && y<0 : "\(x),\(y)在第四象限"
   
case(let x,let y): "x轴上的值是\(x),y轴上的值是\(y)"
//default: "在轴上" 上面一个case代替了case
}


// switch 中的关键字 continue





