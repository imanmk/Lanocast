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

        
    //Get JSON Array for all the users in the gallery
    
    class func getJSONArrayFromURL (URL: NSURL, completionHandler: ([[String:AnyObject]] -> Void)) {
        
        var JSONObjArrayDictionary = [[String : AnyObject]]()
        
        Alamofire.request(.GET, URL).responseJSON { (responseData) -> Void in
            
            let swiftyJsonVar = JSON(responseData.result.value!)
            
            if let resultData = swiftyJsonVar.arrayObject {
                JSONObjArrayDictionary = resultData as! [[String:AnyObject]]
            }
            //print(JSONObjArrayDictionary.count)
            completionHandler(JSONObjArrayDictionary ?? [[:]])
        }
    }
    
    
    class func getTransactionsForID (userID: String, completionHandler: ([[String:AnyObject]] -> Void)) {
        
        var transactionsArray = [[String : AnyObject]]()
        let URLwithID = Constants.USER_TRANSACTIONS_URL!.URLByAppendingPathComponent(userID)
        
        Alamofire.request(.GET, URLwithID).responseJSON { (responseData) -> Void in
            
            let swiftyJsonVar = JSON(responseData.result.value!)
            
            if let resultData = swiftyJsonVar.arrayObject {
                transactionsArray = resultData as! [[String:AnyObject]]
            }
            //print(JSONObjArrayDictionary.count)
            completionHandler(transactionsArray ?? [[:]])
        }
    }
    
    
    //Get total kind and number of stamps received for a user ID
    
    class func getStampsReceived (userID: String, completionHandler: ([String : AnyObject] -> Void)) {
        
        var stampsReceivedArray = [String : AnyObject]()
        let URLwithID = Constants.TOTAL_STAMPS_RECEIVED_URL!.URLByAppendingPathComponent(userID)
        print(URLwithID)
        Alamofire.request(.GET, URLwithID).responseJSON { (responseData) -> Void in
            
            let swiftyJsonVar = JSON(responseData.result.value!)
            print("resultData: \(swiftyJsonVar)")
            //if let resultData = swiftyJsonVar {
                stampsReceivedArray = swiftyJsonVar.dictionaryObject!
            //}
            print("stampsReceivedArray\(stampsReceivedArray)")
            completionHandler(stampsReceivedArray ?? [:])
        }
    }
    
    //Get total number of stamps left to give away for a user ID
    
    class func getStampsToGive (userID: String, completionHandler: ([[String:AnyObject]] -> Void)) {
        
        var stampsToGiveArray = [[String : AnyObject]]()
        let URLwithID = Constants.TOTAL_STAMPS_TO_GIVE_URL!.URLByAppendingPathComponent(userID)
        
        Alamofire.request(.GET, URLwithID).responseJSON { (responseData) -> Void in
            
            let swiftyJsonVar = JSON(responseData.result.value!)
            
            if let resultData = swiftyJsonVar.arrayObject {
                stampsToGiveArray = resultData as! [[String:AnyObject]]
            }
            
            completionHandler(stampsToGiveArray ?? [[:]])
        }
    }
    
    //POST a JSON array to a URL 
    
    class func postJSONArrayToURL (URL: NSURL, Parameters: [String : AnyObject]) {
        
        
        Alamofire.request(.POST, URL, parameters: Parameters, encoding: .JSON)
            .validate()
            .responseJSON { response in
                
                switch response.result {
                    case .Success:
                        print("Validation Successful")
                        break
                case .Failure(let error):
                    print(error)
                    break
                
                }
        }
    }
    
    
}