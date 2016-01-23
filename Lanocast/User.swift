//
//  User.swift
//  Lanocast
//
//  Created by Iman Mk R on 12/5/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import Kingfisher

//Data model for a user based on JSON 

class User
{
    var id : Int = 0
    var email : String = ""
//    var created_at : String = ""
//    var updated_at : String = ""
    var imageName : String = ""
    var meta_title : String = ""
    var meta_description : String = ""
    var name : String = ""
    var sex : String = ""
    var group : String = ""
    var caption : String = ""
//    var photo_id : Int = 0
//    var gallery : Int = 0
    class var birthdate : String {
        get {
            return self.birthdate
        }
        set(newBirthdate) {
            self.birthdate = newBirthdate
        }
    }
    
    
    static var stampsReceivedJSONArray = [[String : AnyObject]]()
    static var stampsToGiveJSONArray = [[String : AnyObject]]()
    static var userTransactionsJSONArray = [[String : AnyObject]]()
    
    
    class func DateFromString(dateString:String) -> NSDate
    {
        let dateFormatter = NSDateFormatter()
        let enUSPosixLocale = NSLocale(localeIdentifier: "en_US_POSIX")
        dateFormatter.locale = enUSPosixLocale
        dateFormatter.dateFormat = "YYYY-MM-DD"
        return dateFormatter.dateFromString(dateString)!
    }
    
}