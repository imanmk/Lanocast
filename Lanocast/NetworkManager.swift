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
    
    //Constant keys based on the params in testendpoint
    
    let ID_KEY = "id"
    let EMAIL_KEY = "email"
    let CREATED_AT_KEY = "created_at"
    let UPDATED_AT_KEY = "updated_at"
    let IMAGE_KEY = "image"
    let META_TITLE_KEY = "meta_title"
    let META_DESCRIPTON_KEY = "meta_description"
    let NAME_KEY = "name"
    let SEX_KEY = "sex"
    let GROUP_KEY = "group"
    let CAPTION_KEY = "caption"
    let PHOTO_ID_KEY = "photo_id"
    let GALLERY_KEY = "gallery"
    let BIRTHDATE_KEY = "birthdate"
    
    //Constant URLs
    
    let TEST_ENDPOINT_URL = "http://www.lanocast.com/testendpoint/"
    let USER_IMAGE_URL = "http://www.lanocast.com/userimage/"
    let USER_IMAGE_NAME_URL = "http://www.lanocast.com/userimagename/"
    let GALLERY_IMAGES_URL = "http://www.lanocast.com/galleryimages/"
    let GALLERY_IMAGES_JSON_URL = "http://www.lanocast.com/userimagejson/"
    
    
    
    func getGalleryImages() -> Void {
        
        
    }
    
    
    
}