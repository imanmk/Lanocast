//
//  Post.swift
//  Lanocast
//
//  Created by Iman Mk R on 12/8/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import Kingfisher


class Post {
    
    var JSONArray = [[String : AnyObject]]()
    
    
    init() {
        NetworkManager.getJSONArrayFromURL(Constants.GALLERY_USERS_JSON_URL!, completionHandler: {
            JSONObjArrayDictionary -> Void in
            
            self.JSONArray = JSONObjArrayDictionary
            
        })
    }
    
}