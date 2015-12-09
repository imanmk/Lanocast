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
    var created_at : String = ""
    var updated_at : String = ""
    var image : String = ""
    var meta_title : String = ""
    var meta_description : String = ""
    var name : String = ""
    var sex : String = ""
    var group : String = ""
    var caption : String = ""
    var photo_id : Int = 0
    var gallery : Int = 0
    class var birthdate : String {
        get {
            return self.birthdate
        }
        set(newBirthdate) {
            self.birthdate = newBirthdate
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    func Populate(dictionary:NSDictionary) {
        
        id = dictionary["id"] as! Int
        email = dictionary["email"] as! String
        created_at = dictionary["created_at"] as! String
        updated_at = dictionary["updated_at"] as! String
        image = dictionary["image"] as! String
        meta_title = dictionary["meta_title"] as! String
        meta_description = dictionary["meta_description"] as! String
        name = dictionary["name"] as! String
        sex = dictionary["sex"] as! String
        group = dictionary["group"] as! String
        caption = dictionary["caption"] as! String
        photo_id = dictionary["photo_id"] as! Int
        gallery = dictionary["gallery"] as! Int
        birthdate = dictionary["birthdate"] as! String
    }
    
    class func DateFromString(dateString:String) -> NSDate
    {
        let dateFormatter = NSDateFormatter()
        let enUSPosixLocale = NSLocale(localeIdentifier: "en_US_POSIX")
        dateFormatter.locale = enUSPosixLocale
        dateFormatter.dateFormat = "YYYY-MM-DD"
        return dateFormatter.dateFromString(dateString)!
    }

    
    class func Populate(dictionary:NSDictionary) -> User
    {
        let result = User()
        result.Populate(dictionary)
        return result
    }
    
}