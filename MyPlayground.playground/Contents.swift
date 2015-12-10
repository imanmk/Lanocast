//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var arrayDic = [["image" : "xuan.jpg"], ["image" : "girl20.jpg"], ["image" : "girl5.jpeg"]]

var text = arrayDic[0]["image"]!

let imageString = "http://www.lanocast.com/uploads/\(text)"

let imageURL = NSURL(string: imageString)

let directoryURL = NSURL(string: "www.me.com/")

let docURL = directoryURL!.URLByAppendingPathComponent("imanmk")


let wordDict = [
    "A" : 2,
    "Z" : 3,
    "D" : 1
]

let sortedDict = wordDict.values.sort { $0 < $1 }
print("\(sortedDict)")

print(wordDict["A"]!)