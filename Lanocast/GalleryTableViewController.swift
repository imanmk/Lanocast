//
//  GalleryTableViewController.swift
//  Lanocast
//
//  Created by Iman Mk R on 12/4/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//

import UIKit
import Kingfisher
import Spring

class GalleryTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        NetworkManager.getJSONArrayFromURL(Constants.GALLERY_USERS_JSON_URL!, completionHandler: {
            JSONObjArrayDictionary -> Void in
            
            DataManager.galleryJSONArray = JSONObjArrayDictionary
            
            print(DataManager.galleryJSONArray.count)
            for (var i = 0; i < DataManager.galleryJSONArray.count; i++) {
                if let item = DataManager.galleryJSONArray[i]["image"] {
                    print(item)
                }
                
            }
            self.tableView.reloadData()
        })
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        //Set the gallery tab to be the default tab 
        self.tabBarController?.selectedIndex = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return the number of rows in the section
        print("inside tableView: \(DataManager.galleryJSONArray.count)")
        
        return DataManager.galleryJSONArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("galleryCell", forIndexPath: indexPath) as! GalleryTableViewCell
       
        // Configure the cell...
        // MARK: - Populate the gallery with images
        // #warning: - just changes the selection style. tableView:didSelectRowAtIndexPath: still gets called
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.galleryImage.kf_showIndicatorWhenLoading = true
        
        //update nameLabel: user's name
        
        
        if let name = DataManager.galleryJSONArray[indexPath.row][Constants.NAME_KEY] as? String {
            cell.nameLabel.text = name
        } else {
            cell.nameLabel.text = "Lano Name"
        }
        
        //put users' images in the cells
        let imageURL : NSURL
        if let imageName = DataManager.galleryJSONArray[indexPath.row][Constants.IMAGE_KEY] as? String {
            imageURL = Constants.USER_IMAGE_URL!.URLByAppendingPathComponent(imageName)
            
            cell.galleryImage.kf_setImageWithURL(imageURL, placeholderImage: nil, optionsInfo: [.Transition(ImageTransition.Fade(1))], progressBlock: {receivedSize, totalSize in print("\(indexPath.row):\(receivedSize)/\(totalSize)")}, completionHandler: { image, error, cacheType, imageURL in
                print("\(indexPath.row): Finished")})
        }
        
     
        
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
