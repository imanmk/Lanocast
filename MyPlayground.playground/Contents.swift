//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var arrayDic = [["image" : "xuan.jpg"], ["image" : "girl20.jpg"], ["image" : "girl5.jpeg"]]

var text = arrayDic[0]["image"]!

let imageString = "http://www.lanocast.com/uploads/\(text)"

let imageURL = NSURL(string: imageString)