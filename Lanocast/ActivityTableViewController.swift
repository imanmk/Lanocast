//
//  ActivityTableViewController.swift
//  Lanocast
//
//  Created by Iman Mk R on 12/4/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//

import UIKit
import Kingfisher
import Spring

class ActivityTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NetworkManager.getTransactionsForID("92", completionHandler: {
            transactionsArray -> Void in
            
            DataManager.transactionsArray = transactionsArray
            
            print(DataManager.transactionsArray.count)
            for (var i = 0; i < DataManager.transactionsArray.count; i++) {
                if let item = DataManager.transactionsArray[i]["id"] {
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataManager.transactionsArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("activityCell", forIndexPath: indexPath) as! ActivityTableViewCell
        
        
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        // Configure the cell...
        
        print("Received from key: \(DataManager.transactionsArray[indexPath.row][Constants.RECEIVED_FROM_KEY]!)")
        if let receivedFrom = DataManager.transactionsArray[indexPath.row][Constants.RECEIVED_FROM_KEY]  {
            var id = receivedFrom as! Int
            var name = DataManager.getNameFromID(id)
            cell.receivedFromLabel.text = "received from \(name)"
        } else {
            cell.receivedFromLabel.text = "received from"
        }
        
        print("Given to key: \(DataManager.transactionsArray[indexPath.row][Constants.GIVEN_TO_KEY]!)")
        if let givenTo = DataManager.transactionsArray[indexPath.row][Constants.GIVEN_TO_KEY] {
            var id = givenTo as! Int
            var name = DataManager.getNameFromID(id)
            cell.givenToLabel.text = "given to \(name)"
            
        } else {
            cell.givenToLabel.text = "given to"
        }
        
        if let stampID = DataManager.transactionsArray[indexPath.row][Constants.STAMP_KIND_KEY] {
            var stampID = stampID as! Int
            var stampName = Stamps.getStampNameByID(stampID)
            cell.stampKindLabel.text = "\(stampName) stamp"
            
            
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
