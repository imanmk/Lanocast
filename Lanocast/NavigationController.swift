//
//  NavigationController.swift
//  Lanocast
//
//  Created by Iman Mk R on 12/10/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController, UIViewControllerTransitioningDelegate {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Status bar white font
        let navigationBarColor = UIColor(red: 254/255, green: 90/255, blue: 29/255, alpha: 1)
        //change navigation bar tint color
        self.navigationBar.barTintColor = navigationBarColor
        //change text color on navogation bar
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }

    

}
