//
//  Constants.swift
//  Lanocast
//
//  Created by Iman Mk R on 12/7/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//

import Foundation

class Constants {
    
    
    
    //Constant keys based on the params in testendpoint
    
    static let ID_KEY = "id"
    static let EMAIL_KEY = "email"
    static let CREATED_AT_KEY = "created_at"
    static let UPDATED_AT_KEY = "updated_at"
    static let IMAGE_KEY = "image"
    static let META_TITLE_KEY = "meta_title"
    static let META_DESCRIPTON_KEY = "meta_description"
    static let NAME_KEY = "name"
    static let SEX_KEY = "sex"
    static let GROUP_KEY = "group"
    static let CAPTION_KEY = "caption"
    static let PHOTO_ID_KEY = "photo_id"
    static let GALLERY_KEY = "gallery"
    static let BIRTHDATE_KEY = "birthdate"
    
    //Constant URLs for HTTP requests
    
    static let TEST_ENDPOINT_URL = NSURL(string: "http://www.lanocast.com/testendpoint/")
    static let USER_IMAGE_URL = NSURL(string: "http://www.lanocast.com/uploads/")
    static let USER_IMAGE_NAME_URL = NSURL(string: "http://www.lanocast.com/userimagename/")
    static let GALLERY_IMAGES_URL = NSURL(string: "http://www.lanocast.com/galleryimages/")
    static let GALLERY_USERS_JSON_URL = NSURL(string: "http://www.lanocast.com/galleryimagejson/")
    static let TOTAL_STAMPS_RECEIVED_URL = NSURL(string: "http://lanocast.com/totalbadgesreceivedcount/")
    static let TOTAL_STAMPS_TO_GIVE_URL = NSURL(string: "http://lanocast.com/totalbadgestogivecount/")
    static let USER_TRANSACTIONS_URL = NSURL(string: "http://lanocast.com/usertransactions/")
    static let STAMP_EXCHANGE_URL = NSURL(string: "http://lanocast.com/exchange/")
    static let LOGIN_AUTHENTICATION_URL = NSURL(string: "http://lanocast.com/letmein")
    
    // User sex options
    static let sexOptions = ["Female", "Male", "Other"]
    
}