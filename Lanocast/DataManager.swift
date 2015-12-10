//
//  DataManager.swift
//  Lanocast
//
//  Created by Iman Mk R on 12/6/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import Kingfisher


class DataManager {
    
    //JSON Array of user unfo
    static var galleryJSONArray = [[String : AnyObject]]()
    
    static var transactionsArray = [[String : AnyObject]]()
    
    class func getNameFromID (ID: Int) -> String {
        //TODO: change to if-let
        
        NetworkManager.getJSONArrayFromURL(Constants.GALLERY_USERS_JSON_URL!, completionHandler: {
            JSONObjArrayDictionary -> Void in
            
            DataManager.galleryJSONArray = JSONObjArrayDictionary
            
            print(DataManager.galleryJSONArray.count)
            
            
        })
        var name = "Lano name"
        
        for (var i = 0; i < galleryJSONArray.count; ++i) {
            var idNumber = galleryJSONArray[i]["id"] as! Int
            if (ID == idNumber) {
                name =  galleryJSONArray[i][Constants.NAME_KEY] as! String
                break
                
            }
        }
        return name
        
    }
    
    
}