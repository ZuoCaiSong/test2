//: [Previous](@previous)

import UIKit

import Foundation

var str = "Hello, playground"

let a: Int16 = 100
let b: Int8 = 10

//做一个类型的转换,一般都是有高转向低位

/*
 * 注意Int8 的范围是 -(2的8次方 －1 ～ 2的8次方 －1)
 * 注意Int16 的范围是 -(2的16次方 －1 ～ 2的16次方 －1)
 */

let c = a + Int16(b)

let d = Int8(a) + b

let e: Int8 = -2



/***浮点数与整型数的转换***/
let 三 = 3

let 零点一四一五九 = 0.64159
let 圆周率  =  Double(三) + 零点一四一五九

let 圆周率整数位 = Int(圆周率)

//数字字面量的相加不同变量，可以直接相加
let  圆周率2  = 3 + 0.14159

/*******类型别名******/
typealias 整形 = Int

var z:整形 = 0

z = 10

/***bool类型***/
let isture = true

let isfalse = false

if isture{
    print("我爱你")
}else{
    print("我不爱你")
}

let i = 2

//现在if的判断必须要明确了。不能用赋值的形式
if i==2 {
    
    print("注意")
}


/*******元祖类型******/

/*
 * 把多种类型放在一起，有三个元素
 */

let 昨天我网购的一件衬衫 = (价格:70,颜色:"黑色",合身:true)  //----> 简化版：let 昨天我网购的一件衬衫 = (70,"黑色",true)

//1.1，获取元祖中的值，可以通过下标
let 衣服价格 = 昨天我网购的一件衬衫.0

//1.2，获取元祖中的值，可以通过标注
let 衬衣的价格 = 昨天我网购的一件衬衫.价格



let (价格,颜色,合身)  = 昨天我网购的一件衬衫

print(价格)
print(颜色)
print(合身)

//如果只想取元祖的一个值
let (只关注价格,_,_) = 昨天我网购的一件衬衫

print(只关注价格)


/************可选项*************/
/**当一个值可能是不存在的时候*/
let 昨天我买的彩票  = "50"

let 中奖金额 = Int(昨天我买的彩票)

/**加一个！表示拆包，并且表示他一定是有值的。*/
if 中奖金额 != 0 {
    print("中奖金额 \(中奖金额!)")
}else{
    
    print("下次加油")
}

/**********绑定********************/
/**可选项有值时，把他绑定下来，即存起来，继续使用*/
/*
 * nil 在oc中他表示一个空指针，但在swify中，仅仅表示一个可选项，没有值的类型
 */
if var 临时金额 = 中奖金额{
    
    var 稅后金额 = Double(临时金额) * 0.8
    print("恭喜你中了\(临时金额)万,税后\(稅后金额)万")
}else{
     print("下次加油")
}


/**间接拆包optionals*/

let 彩票金额: String! = "5";

print("此次彩票中奖金额是\(彩票金额)元")

//就不需要在加一个“！”
if let bb = 彩票金额{
    print("此次彩票中奖金额是\(彩票金额)元")
}

// assertions 断言

var age = 19

/**需要满足底线条件，否则程序报错，用于调试阶段*/
assert(age > 18 ,"必须年满18岁，方可进入")


//闭区间与开区间

// 闭区间，(1949...2014)，包含起始值
for 年 in (1949...2014){ //遍历
    
    print("\(年)")
}


// 开区间 两个点，带小于号，数组用得比较多
var 群主名单 = ["a8","逗比","busi","干起"]

var arrConunt = 群主名单.count

//遍历
for index in 0..<arrConunt { //小于号后面不能用空格
    
    print("\(index)：\(群主名单[index])")
}

//＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝ 字符串的比较＝＝＝＝＝＝＝＝＝
//1.空字符串的创建
let str1 = "zuocaison"
let str2 = "zuocaisong"



let 字符串的创建2  = String()

if str1 != str2{
    print("不相等")
}


var 空字符串: String = ""
//2.判断是否是空字符串
if 空字符串.isEmpty{
    
    print("是空字符串")
    
}

//3. 单个字符
var 单个字符2 : Character = "u"

// 3.1 将字符串遍历成单个字符
for char in str1.characters {

    print(char)
}

//字符串的个数长度
//countElements(str1)
str1.characters.count

//选并操作符
let 理想品牌11 : String?



let 底线品牌 = "小米4"

理想品牌11 = "iphone7"

var 实际入手  = (理想品牌11 ?? 底线品牌 )



//========================数组的学习==============================
//1，定义一个字符串的数组 ，记住数组是用方括号 ，元祖是圆括号
var jiji = [String]()

//重复定义100个一样的字符串在数组里面可以：
var strInArr = [String](count: 100, repeatedValue: "100个一样的字符串")
//1.1，定义一个字符的数组，var就是可变的
var marray1 = [1,4] //注意数组里面的类型

marray1.count

//元素的追加
marray1.append(2)
marray1 += [7]

//元素是否为空
jiji.isEmpty

marray1.isEmpty


//元素插入
marray1.insert(56, atIndex: 2)

marray1.removeLast()//会反悔移除的元素

// 元祖式；遍历

for (index,elemnetArr) in EnumerateSequence(marray1){
    
    print("\(index):\(elemnetArr)")
}

//元素的更改，注意不要越界
// 注意，[2...3],2和3两个元素会被重新赋值，如果右边的元素（值的个数）多个左边区间的个数，则会被追加到数组里面去，可以试试 marray1[2..<3] = [88,99,100,111]
marray1[2...3] = [88,99]

marray1







