//
//  Stamp.swift
//  Lanocast
//
//  Created by Iman Mk R on 12/5/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//

import Foundation

class Stamps {
    
    static var stampsReceivedDictionary = [String : AnyObject]()
    static var stampsToGiveDictionary = [String : AnyObject]()
    
    //TODO: change this to an array with getter and setter
    //TODO: REMOVE this total number of stamps const
    static let TOTAL_STAMP_KINDS = 8
    
    static let makeupStampKey = "1"
    static let hairStampKey = "2"
    static let summerStampKey = "3"
    static let nailsStampKey = "4"
    static let blackDressStampKey = "5"
    static let halloweenStampKey = "6"
    static let fitnessStampKey = "7"
    static let fallStampKey = "8"
    
    static let makeupStampImageName = ""
    static let hairStampImageName = ""
    static let summerStampImageName = ""
    static let nailsStampImageName = ""
    static let blackDressStampImageName = ""
    static let halloweenStampImageName = ""
    static let fitnessStampImageName = ""
    static let fallStampImageName = ""
    
    static var makeupStampCount = 0
    static var hairStampCount = 0
    static var summerStampCount = 0
    static var nailsStampCount = 0
    static var blackDressStampCount = 0
    static var halloweenStampCount = 0
    static var fitnessStampCount = 0
    static var fallStampCount = 0
    
    
    class func getStampNameByID (stampID : Int) -> String {
        switch stampID {
            case 1:
                return "Make up"
            case 2:
                return "Hair"
            case 3:
                return "Summer"
            case 4:
                return "Nails"
            case 5:
                return "Black dress"
            case 6:
                return "Halloween"
            case 7:
                return "Fitness"
            case 8:
                return "Fall"
            default:
                print("No stamp could be matched with a stampID")
                return "A stamp"
            
            
        }
    }
    
   
    
}