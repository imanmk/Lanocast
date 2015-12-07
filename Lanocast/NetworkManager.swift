//
//  NetworkManager.swift
//  Lanocast
//
//  Created by Iman Mk R on 12/4/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import Kingfisher


class NetworkManager {

        
    
    
    class func getJSONArrayFromURL(URL: NSURL, completionHandler: ([[String:AnyObject]] -> Void)) {
        
        var JSONObjArrayDictionary = [[String : AnyObject]]()
        
        Alamofire.request(.GET, URL).responseJSON { (responseData) -> Void in
            
            let swiftyJsonVar = JSON(responseData.result.value!)
            
            if let resultData = swiftyJsonVar.arrayObject {
                JSONObjArrayDictionary = resultData as! [[String:AnyObject]]
            }
            print(JSONObjArrayDictionary.count)
            completionHandler(JSONObjArrayDictionary ?? [[:]])
        }
        
     
    
    }
    
}