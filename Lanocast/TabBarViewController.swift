//
//  TabBarControllerViewController.swift
//  Lanocast
//
//  Created by Iman Mk R on 12/10/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UIViewControllerTransitioningDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //global tabbAR colors:
        
        let tabBarColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
        //let tabBarIconNormalColor = UIColor(red: 183/255, green: 190/255, blue: 199/255, alpha: 1)
        let tabBarIconSelectedColor = UIColor(red: 1/255, green: 153/255, blue: 211/255, alpha: 1)

        //change tab bar background color
        self.tabBar.barTintColor = tabBarColor
        
        //set tabbar icon selected color
        self.tabBar.tintColor = tabBarIconSelectedColor
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
